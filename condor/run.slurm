#!/bin/bash

#SBATCH --job-name=awesome
#SBATCH --output=sample-%5A-%2a.out
#SBATCH --error=sample-%5A-%2a.err
#SBATCH --time=15
#SBATCH --partition=killable
#SBATCH --array=0,1
#SBATCH --cpus-per-task=2
#SBATCH --parsable

if [[ -z ${UDOCKER_DIR} ]]; then
    export UDOCKER_DIR=/vol/scratch/`whoami`/udocker
fi

DIR=`pwd`/${dirname $0}
EXECUTABLE=script.r

srun echo ${DIR}
srun udocker run --containerauth --volume=${DIR}:/scripts r-container-1 R --vanilla -f /scripts/${EXECUTABLE}
srun udocker run --containerauth --volume=${DIR}:/scripts r-container-1 Rscript /scripts/${EXECUTABLE}
srun echo "Done"