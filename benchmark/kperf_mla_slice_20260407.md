# Kernel Performance Report: mla_slice

**File:** `bench_flash_mla.v3.pipeline.mfma16.bh64bn64.3stage.kpadded.pagesize1.asynccopy.slice.py`
**Kernel:** `_mla_attn_kernel_gluon`
**Date:** 2026-04-07
**GPU:** gfx950 (CDNA4)

## Program Output

```
comparing torch vs flash_mla_triton: b=128, s_q=1, mean_seqlens=4223.0, h_q=128, h_kv=1, d=576, dv=512, causal=True, dtype=torch.bfloat16
output match
perf torch: 180.332 ms, 1 TFLOPS, 4 GB/s
perf flash_mla_triton: 0.270 ms, 557 TFLOPS, 2434 GB/s
```

---

## Mode 1 -- Kernel Trace

| Version | VGPRs | Spills | MFMA Eff. | Iter Dur (cyc) | avg time |
|---------|-------|--------|-----------|----------------|----------|
| mla_slice | 300 | 0 | 37.64% | 5782 | 244.55 us |

---

## Mode 2 -- ATT Trace Analysis

```
--- ATT Analysis Summary ---
  MFMA efficiency      : 37.93%
  Avg iteration cycles : 5736.6
  Loop iterations      : 63.0
  Time distribution    : prologue=2.71%, loop=91.64%, epilogue=5.66%
  136 MFMAs per iteration x 16 cycles = 2176 MFMA cycles
  Non-MFMA cycles per iteration: ~3561
```

RAW JSON:
```json
{
  "loop_first_index": 756,
  "loop_last_index": 1593,
  "epilogue_first_index": 1594,
  "mfma_count_in_loop": 136,
  "total_mfma_cycles_in_loop": 2176,
  "loop_hitcount": 516,
  "epilogue_hitcount": 129,
  "num_iterations": 63.0,
  "average_loop_duration": 361404.0,
  "average_prologue_duration": 10672.0,
  "average_epilogue_duration": 22304.0,
  "pro_ratio": "2.71%",
  "loop_ratio": "91.64%",
  "epi_ratio": "5.66%",
  "average_iteration_duration": 5736.571428571428,
  "mfma efficiency": "37.93%"
}
```

---

## Mode 3 -- Counter Collection

| Version | SQ_LDS_BANK_CONFLICT | SQ_LDS_DATA_FIFO_FULL | TCP_TCC_READ_REQ_sum | TCP_TOTAL_CACHE_ACCESSES_sum | TCC_HIT_sum | TCC_MISS_sum | TCC_EA0_RDREQ_DRAM_sum | TCC_EA0_WRREQ_DRAM_sum | Dispatches |
|---------|---------------------|----------------------|---------------------|------|----------|----------|---------|---------|------------|
| mla_slice | 0 | 0 | 9,911,152 | 21,919,936 | 5,324,428 | 5,161,795 | 5,032,139 | 262,145 | 178 |

**Derived cache metrics:**
- L1 hit rate: (21,919,936 - 9,911,152) / 21,919,936 = 54.8%
- L2 hit rate: 5,324,428 / (5,324,428 + 5,161,795) = 50.8%
- TCP->L2 read bytes (per dispatch): 9,911,152 / 178 x 128B = 6.8 MB
- L2->HBM read bytes (per dispatch): 5,032,139 / 178 (32B or 64B EA requests) = 3.5 MB

---

## Summary and Optimization Suggestions

**Overall assessment:** Attention kernel at 557 TFLOPS / 244 us, memory-bound at 38% MFMA efficiency, but zero LDS bank conflicts and zero spills. Much of the non-MFMA time is inherent algorithmic work (softmax between QK and PV dots).

| Metric | Value | Status |
|--------|-------|--------|
| VGPRs | 300 | -- |
| Spills | 0 | OK |
| avg kernel time | 244.55 us | -- |
| MFMA efficiency | 37.9% | WARN |
| loop ratio | 91.6% | OK |
| prologue ratio | 2.7% | OK |
| epilogue ratio | 5.7% | WARN |
| LDS bank conflicts | 0 | OK |
| LDS data FIFO full | 0 | OK |
| L1 hit rate | 54.8% | WARN |
| L2 hit rate | 50.8% | WARN |

**Breakdown of non-MFMA cycles (per iteration):**
- Total: 5737 cycles/iter, MFMA: 2176 cycles (136 x 16)
- Non-MFMA: ~3561 cycles -- includes:
  - (a) Inherent algorithmic work: softmax (exp, sum, scale) between QK and PV dots -- unavoidable
  - (b) Data movement: LDS reads/writes, global loads
  - (c) Avoidable stalls: memory wait cycles -- this is the optimization target

**Recommended next steps (in priority order):**
1. Investigate L2 hit rate (50.8%): Half of L1 misses go to HBM. Consider XCD remapping or improving K/V reuse across workgroups to boost L2 locality.
2. Epilogue ratio (5.7%): Slightly above the 5% threshold -- check if epilogue store/reduction can be overlapped or shortened.
3. L1 hit rate (54.8%): Working set may be larger than TCP capacity per CU. Check if tile size can be tuned to improve L1 reuse.
