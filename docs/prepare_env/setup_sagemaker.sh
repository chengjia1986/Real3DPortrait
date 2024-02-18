#!/bin/bash

echo "conda create -n real3dportrait python=3.9"
conda create -n real3dportrait python=3.9
echo "conda activate real3dportrait"
conda activate real3dportrait
echo "conda install ipykernel -y"
conda install ipykernel -y
echo "conda install conda-forge::ffmpeg -y"
conda install conda-forge::ffmpeg -y
echo "conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch-nightly -c nvidia -y"
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch-nightly -c nvidia -y
echo "conda install pytorch3d::pytorch3d -y"
conda install pytorch3d::pytorch3d -y

echo "pip install --yes cython"
pip install --yes cython
echo "pip install --yes openmim==0.3.9"
pip install --yes openmim==0.3.9
echo "mim install --yes mmcv==2.1.0 # use mim to speed up installation for mmcv"
mim install --yes mmcv==2.1.0 # use mim to speed up installation for mmcv

echo "pip install --yes -r /home/ec2-user/SageMaker/Real3DPortrait/docs/prepare_env/requirements.txt -v"
pip install --yes -r /home/ec2-user/SageMaker/Real3DPortrait/docs/prepare_env/requirements.txt -v