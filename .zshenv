export ML_DATA_DIR="/mnt/data/share/data"

export CUDA_HOME=/usr/local/cuda-9.0
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}:/usr/local/cuda/extras/CUPTI/lib64
export PATH=${CUDA_HOME}/bin:$PATH
