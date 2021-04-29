# Running R on TAU CS school servers

On this repo we show how to run R - scripts or interactive - on school servers.

TODO: add test - script that does everything and prints success

## Quick Start

On a server with slurm - ubuntu 18.04 servers, for example c-00[1-8]:

```sh

$ git clone https://github.com/yuvalyehudab/slurm-basic.git
$ cd slurm-basic/condor

$ sbatch run.slurm
Submitted batch job <job-number>
$ sacct -j <job-number>
...
$ cat sample.out
...
$ cat sample.err
...
```

## Create an R container

if you don't have an R container, you can run this:

```sh
$ bash create-r-container.sh
...
```

the name of the container is currently 'r-container-1'.

## Run R interactively

Use this line to run a session of interactive R (assuming you already created a container):

```sh
# change the path to your udocker path
$ setenv $UDOCKER_DIR /vol/scratch/`whoami`/udocker

# run the container
$ udocker run r-container-1

# If you want your home dir, run like this:
$ udocker run --bindhome r-container-1
```
