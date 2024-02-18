#!/bin/bash

conda create -n real3dportrait python=3.9
conda activate real3dportrait
conda install ipykernel -y
conda install conda-forge::ffmpeg -y
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch-nightly -c nvidia -y
conda install pytorch3d::pytorch3d -y

pip install --yes cython
pip install --yes openmim==0.3.9
mim install --yes mmcv==2.1.0 # use mim to speed up installation for mmcv

pip install --yes -r /home/ec2-user/SageMaker/Real3DPortrait/docs/prepare_env/requirements.txt -v