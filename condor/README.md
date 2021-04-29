# running R scripts on TAU CS school servers

TODO: add test - script that does everything and prints success

## Quick start

on school server with slurm available (usually ubuntu 18.04 - for example c-00[1-8]):

```sh

$ git clone https://github.com/yuvalyehudab/slurm-basic.git
$ cd slurm-basic/condor

$ setenv UDOCKER_DIR /vol/scratch/`whoami`/udocker
$ bash create-r-container.sh

$ sbatch run.slurm
Submitted batch job <job-number>
```

you should get a job number. wait until the job is finished - completed or failed. you can check that with the job number: ``` sacct -j <job-number> ``` you can now see the output in ```sample.out``` and the errors in ```sample.err```.
