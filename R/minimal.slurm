#!/bin/bash

#SBATCH -p killable

EXECUTABLE=/vol/scratch/yuvalyehudab/condor/sample1

srun ${EXECUTABLE}
