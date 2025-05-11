#!/bin/bash
# Prerequisites: Linux, nvcc version Build cuda_12.8.r12.8/compiler.35404655_0, CUDA Version: 12.7, g++ version 11.4.0
# g++ version 11.4.0

# Create conda environment
conda create -n scenescript python=3.10

conda activate scenescript

# Required to build torchsparse
conda install bioconda::google-sparsehash

git clone https://github.com/mit-han-lab/torchsparse.git

cd torchsparse

# This will take a while...
python setup.py install

pip install numpy pandas scipy jupyter plotly einops omegaconf projectaria-tools nbformat

