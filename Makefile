NVCC = nvcc
NVCC_FLAGS = -arch=sm_86

.PHONY: clean

saxpy: saxpy.cu
	$(NVCC) $(NVCC_FLAGS) -o saxpy saxpy.cu

clean:
	@rm -f saxpy