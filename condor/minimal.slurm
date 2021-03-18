#!/bin/bash

#SBATCH -p studentkillable

EXECUTABLE=/vol/scratch/yuvalyehudab/condor/sample1

srun ${EXECUTABLE}
