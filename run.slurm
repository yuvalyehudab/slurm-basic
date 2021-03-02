#!/bin/bash

#SBATCH --job-name=awesome
#SBATCH --output=awesome.out
#SBATCH --error=awesome.err
#SBATCH --partition=studentbatch
#SBATCH --time=1
#SBATCH --signal=USR1@120
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=1


srun python awesome.py
