#!/bin/bash

python bench_flash_mla.v3.pipeline.mfma16.bh64bn32.3stage.kpadded.py
python bench_flash_mla.v3.pipeline.mfma16.bh64bn32.3stage.py
python bench_flash_mla.v3.pipeline.mfma16.bh64bn32.4stage.kpadded.400t.py
python bench_flash_mla.v3.pipeline.mfma16.bh64bn32.4stage.py
python bench_flash_mla.v3.pipeline.mfma32.bh64bn64.3stage.kpadded.py
python bench_flash_mla.v3.pipeline.mfma32.bh64bn64.3stage.ksharedlinear.py




#python bench_flash_mla.v3.pipeline.mfma16.bh64bn32.3stage.kpadded.py
#perf flash_mla_triton: 0.321 ms, 470 TFLOPS, 2054 GB/s
#python bench_flash_mla.v3.pipeline.mfma16.bh64bn32.3stage.py
#perf flash_mla_triton: 0.340 ms, 443 TFLOPS, 1939 GB/s
#python bench_flash_mla.v3.pipeline.mfma16.bh64bn32.4stage.kpadded.400t.py
#perf flash_mla_triton: 0.379 ms, 397 TFLOPS, 1738 GB/s
#python bench_flash_mla.v3.pipeline.mfma16.bh64bn32.4stage.py
#perf flash_mla_triton: 0.344 ms, 438 TFLOPS, 1916 GB/s
#python bench_flash_mla.v3.pipeline.mfma32.bh64bn64.3stage.kpadded.py
#perf flash_mla_triton: 0.320 ms, 471 TFLOPS, 2058 GB/s
#python bench_flash_mla.v3.pipeline.mfma32.bh64bn64.3stage.ksharedlinear.py
#perf flash_mla_triton: 0.321 ms, 468 TFLOPS, 2049 GB/s
