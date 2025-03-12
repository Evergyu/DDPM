#!/bin/sh

cd /home/minelab/desktop/LIG/DDPM/

python -m tools.train_ddpm --dataset_config data/train_1/images
python -m tools.sample_ddpm --grid True
mv default/samples/ default/samples_64_1_MSE/
mv default/ddpm_ckpt.pth default/ddpm_ckpt_64_1_MSE.pth

python -m tools.train_ddpm --dataset_config data/train_5/images
python -m tools.sample_ddpm --grid True
mv ./default/samples/ ./default/samples_64_5_MSE/
mv ./default/ddpm_ckpt.pth ./default/ddpm_ckpt_64_5_MSE.pth

python -m tools.train_ddpm --dataset_config data/train_25/images
python -m tools.sample_ddpm --grid True
mv ./default/samples/ ./default/samples_64_25_MSE/
mv ./default/ddpm_ckpt.pth ./default/ddpm_ckpt_64_25_MSE.pth

python -m tools.train_ddpm --dataset_config data/train_100/images
python -m tools.sample_ddpm --grid True
mv ./default/samples/ ./default/samples_64_100_MSE/
mv ./default/ddpm_ckpt.pth ./default/ddpm_ckpt_64_100_MSE.pth




