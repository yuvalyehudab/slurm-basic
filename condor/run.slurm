#!/bin/bash

#SBATCH --job-name=awesome
# --output=sample-%5A-%2a.out
#SBATCH --output=sample.out
#SBATCH --error=sample.err
#SBATCH --time=15
#SBATCH --partition=killable
#SBATCH --array=0
#SBATCH --cpus-per-task=2
# --parsable

#udocker verify

if [[ -z ${UDOCKER_DIR} ]]; then
    export UDOCKER_DIR=/vol/scratch/`whoami`/udocker
fi

DIR=`pwd`
EXECUTABLE=script.r

srun echo "option 1:"
srun echo 'srun udocker -q run --containerauth --volume=${DIR}:/scripts r-container-1 R --vanilla -f /scripts/${EXECUTABLE}'
srun echo
srun udocker -q run --containerauth --volume=${DIR}:/scripts r-container-1 R --vanilla -f /scripts/${EXECUTABLE}
srun echo

srun echo "option 2: "
srun echo 'srun udocker run --containerauth --volume=${DIR}:/scripts r-container-1 Rscript /scripts/${EXECUTABLE}'
srun echo
srun udocker run --containerauth --volume=${DIR}:/scripts r-container-1 Rscript /scripts/${EXECUTABLE}

srun echo

# Running from command line. TODO - check if everythong also works from sbatch script!

# to run bash:
# srun --pty udocker run --containerauth --volume=`pwd`:/scripts r-container-2 bash
# also works but not recommended nor supported:
# srun udocker run --containerauth --volume=`pwd`:/scripts r-container-2 bash
# you can do everything - for example, install new tools etc:
# apt update && apt install -y git

# to run a script - for example, installations/programs/scripts:
# srun udocker run --containerauth --volume=`pwd`:/scripts r-container-2 bash /scripts/test-udocker.sh

# to run specific command:
#srun udocker run --containerauth --volume=`pwd`:/scripts r-container-2 apt install git
