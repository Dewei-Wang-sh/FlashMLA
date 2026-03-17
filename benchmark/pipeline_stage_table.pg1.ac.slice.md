# Pipeline Stage Table: MLA v3 PageSize=1 AsyncCopy Slice Kernel

Double-buffered (buf 0/1), async copy with sliced K_nope (2x32 tokens).

Notation:
- `P[i]` = page numbers for iteration i
- `K[i].s0` / `K[i].s1` = K_nope slice 0 (tokens 0..31) / slice 1 (tokens 32..63)
- `KP[i]` = K_pe for iteration i
- `buf_idx` = read buffer, `async_idx` = write buffer

## Prologue

Commit groups in FIFO order: P[0](1), P[1](2), K[0].s0(3), KP[0](4), K[0].s1(5).

| Step | Action | Buffer | CG | Notes |
|------|--------|--------|----|-------|
| 1 | `buffer_load P[0]` | bufs_page[0] | 1 | |
| 2 | `buffer_load P[1]` | bufs_page[1] | 2 | |
| 3 | `wait_group(1)` | | | drains P[0], OG: 2->1 |
| 4 | `load_shared Q` | buf_q_nope, buf_q_pe | | |
| 5 | `load_shared P[0].s0` | bufs_page[0][0:32] | | page nums for K[0].s0 |
| 6 | `buffer_load K[0].s0` | bufs_kv[0][0:32] | 2 | |
| 7 | `buffer_load KP[0]` | bufs_kpe[0] | 3 | |
| 8 | `load_shared P[0].s1` | bufs_page[0][32:64] | | page nums for K[0].s1 |
| 9 | `buffer_load K[0].s1` | bufs_kv[0][32:64] | 4 | |

Exit: 4 outstanding = { P[1], K[0].s0, KP[0], K[0].s1 } (FIFO order)

## Loop (iteration i)

| Step | Action | Buffer | CG | Outstanding |
|------|--------|--------|----|-------------|
| L1 | `buffer_load P[i+2]` | bufs_page[buf_idx] | +1 | 4->5 |
| L2 | `wait_group(4)` | | | 5->4, drains P[i+1] |
| L3 | `load_shared P[i+1]` | bufs_page[async_idx] | | page for KP |
| L4 | `load_shared P[i+1].s0` | bufs_page[async_idx][0:32] | | page for K.s0 |
| L5 | `buffer_load K[i+1].s0` | bufs_kv[async_idx][0:32] | +1 | 4->5 |
| L6 | `buffer_load KP[i+1]` | bufs_kpe[async_idx] | +1 | 5->6 |
| L7 | `wait_group(3)` | | | 6->3, drains K[i].s0, KP[i], K[i].s1 |
| L8 | `load_shared K[i]` (k_c) | bufs_kv[buf_idx] | | **SAFE** |
| L9 | `sched_barrier(0)` | | | scheduling fence |
| L10 | `load_shared P[i+1].s1` | bufs_page[async_idx][32:64] | | page for K.s1 |
| L11 | `buffer_load K[i+1].s1` | bufs_kv[async_idx][32:64] | +1 | 3->4 |
| L12 | MFMA: q_nope * k_c | | | |
| L13 | `wait_group(5)` | | | no-op (4 outstanding) |
| L14 | `load_shared KP[i]` (k_pe) | bufs_kpe[buf_idx] | | **SAFE** (drained at L7) |
| L15 | MFMA: q_pe * k_pe | | | |
| L16 | Softmax | | | |
| L17 | `load_shared V[i]` | bufs_kv[buf_idx] | | **SAFE** (drained at L7) |
| L18 | MFMA: p * v_c | | | |
| L19 | buf_idx = (buf_idx+1)%2 | | | swap buffers |

Exit: 4 outstanding = { P[i+2], K[i+1].s0, KP[i+1], K[i+1].s1 }

## Epilogue 1 (consume iter N-2, prefetch iter N-1)

Enter: 4 outstanding = { P[N-1], K[N-2].s0, KP[N-2], K[N-2].s1 }

| Step | Action | Buffer | CG | Outstanding |
|------|--------|--------|----|-------------|
| E1.1 | `wait_group(3)` | | | 4->3, drains P[N-1] |
| E1.2 | `load_shared P[N-1]` | bufs_page[async_idx] | | page for K[N-1] |
| E1.3 | `buffer_load K[N-1]` (full) | bufs_kv[async_idx] | +1 | 3->4 |
| E1.4 | `buffer_load KP[N-1]` | bufs_kpe[async_idx] | +1 | 4->5 |
| E1.5 | `wait_group(2)` | | | 5->2, drains K[N-2].s0, KP[N-2], K[N-2].s1 |
| E1.6 | `load_shared K[N-2]` (k_c) | bufs_kv[buf_idx] | | **SAFE** |
| E1.7 | MFMA: q_nope * k_c | | | |
| E1.8 | `wait_group(2)` | | | no-op (already 2) |
| E1.9 | `load_shared KP[N-2]` (k_pe) | bufs_kpe[buf_idx] | | **SAFE** (drained at E1.5) |
| E1.10 | MFMA: q_pe * k_pe | | | |
| E1.11 | Softmax + V dot | bufs_kv[buf_idx] | | **SAFE** |

Exit: 2 outstanding = { K[N-1], KP[N-1] }

## Epilogue 2 (consume iter N-1, no prefetch)

Enter: 2 outstanding = { K[N-1], KP[N-1] }

| Step | Action | Buffer | CG | Outstanding |
|------|--------|--------|----|-------------|
| E2.1 | `wait_group(1)` | | | 2->1, drains K[N-1] |
| E2.2 | `load_shared K[N-1]` (k_c) | bufs_kv[buf_idx] | | **SAFE** |
| E2.3 | MFMA: q_nope * k_c | | | |
| E2.4 | `wait_group(0)` | | | 1->0, drains KP[N-1] |
| E2.5 | `load_shared KP[N-1]` (k_pe) | bufs_kpe[buf_idx] | | **SAFE** |
| E2.6 | MFMA: q_pe * k_pe | | | |
| E2.7 | Softmax + V dot + store | bufs_kv[buf_idx] | | **SAFE** |

Exit: 0 outstanding.

## wait_group Summary

| Location | Line | wait_group | Drains |
|----------|------|------------|--------|
| Prologue | ~446 | 1 | P[0] |
| Loop | ~497 | 4 | P[i+1] |
| Loop | ~525 | 3 | K[i].s0, KP[i], K[i].s1 |
| Loop | ~548 | 5 | no-op |
| Epilogue 1 | ~584 | 3 | P[N-1] |
| Epilogue 1 | ~606 | 2 | K[N-2].s0, KP[N-2], K[N-2].s1 |
| Epilogue 1 | ~611 | 2 | no-op |
| Epilogue 2 | ~641 | 1 | K[N-1] |
| Epilogue 2 | ~646 | 0 | KP[N-1] |

## Hazard Check

All reads verified safe:
- **K[i] (L8)**: K[i].s0 + K[i].s1 drained at L7
- **KP[i] (L14)**: drained at L7
- **V[i] (L17)**: same buffer as K[i], drained at L7
- **K[N-2] (E1.6)**: K[N-2].s0 + s1 drained at E1.5
- **KP[N-2] (E1.9)**: drained at E1.5
- **K[N-1] (E2.2)**: drained at E2.1
- **KP[N-1] (E2.5)**: drained at E2.4

No WAR hazards: writes go to `async_idx`, reads from `buf_idx`, never overlap.
