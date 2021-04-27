# running R scripts on TAU CS school servers

## Quick start

on school server with slurm available (usually ubuntu 18.04 - for example c-00[1-8]):

```sh

git clone https://github.com/yuvalyehudab/slurm-basic.git
cd slurm-basic/condor

setenv UDOCKER_DIR /vol/scratch/`whoami`/udocker
bash create-r-container.sh

sbatch run.slurm

```
