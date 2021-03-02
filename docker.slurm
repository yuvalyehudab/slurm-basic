#!/bin/bash

#docker.slurm

#SBATCH --job-name=awesome
#SBATCH --output=awesome.out
#SBATCH --error=awesome.err
#SBATCH --partition=studentbatch
#SBATCH --time=1
#SBATCH --signal=USR1@120
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=1

pwd

echo `pwd`

SCRIPT_PATH=/specific/scratches/scratch/yuvalyehudab/slurm-basic

srun easy_ngc --cmd ${SCRIPT_PATH}/script.sh pytorch/pytorch:latest

echo 'finished slurm script'
