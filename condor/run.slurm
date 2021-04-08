#!/bin/bash

#SBATCH --job-name=awesome
#SBATCH --output=sample-%5A-%2a.out
#SBATCH --error=sample-%5A-%2a.err
#SBATCH --time=15
#SBATCH --partition=studentkillable

#SBATCH --array=0,1

DIR=`pwd`
EXECUTABLE=${DIR}/sample.py

srun echo ${DIR}
srun ${EXECUTABLE}
