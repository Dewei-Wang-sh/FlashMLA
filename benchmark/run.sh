rocprofv3 -i counters.yaml --kernel-include-regex "mla" -d counters -f csv -- python
rocprofv3 -i config.json -d att_mla_v3_bh64bn64 -- python


# test pre-set swizzle
triton-opt --convert-triton-amdgpu-to-llvm=arch=gfx950 tmp.beforellvm.v2.bh64bn64.tryswizzle.mlir
amdg.buffer_load_to_local



bench_flash_mla.v3.pipeline.mfma16.bh64bn32.3stage.kpadded.py 463t
bench_flash_mla.v3.pipeline.mfma32.bh64bn64.3stage.kpadded.py 473t
