# Running R on TAU CS school servers

On this repo we show how to run R - scripts or interactive - on school servers.

## Quick Start

On a server with slurm - ubuntu 18.04 servers, for example c-00[1-8]:

```sh

$ git clone https://github.com/yuvalyehudab/slurm-basic.git
$ cd slurm-basic/R

$ sbatch run.slurm
Submitted batch job <job-number>

# show job information
$ sacct -j <job-number>
...

# show job output
$ cat sample.out
...

# show job errors
$ cat sample.err
...
```

## Create an R container

if you don't have an R container, you can run this:

```sh
$ pwd
/vol/scratch/`whoami`/slurm-basic/R

# change the path to your udocker path
$ setenv UDOCKER_DIR /vol/scratch/`whoami`/udocker

$ bash create-r-container.sh
...
```

the name of the container is currently 'r-container'. Feel free to change things acoording to your needs.

## Run R interactively

Use this line to run a session of interactive R (assuming you already created a container):

```sh
# run the container
$ udocker run r-container
...

# If you want your home dir, run like this:
$ udocker run --bindhome r-container

# updates, installations:
$ udocker run r-container apt update && apt upgrade -y && apt install -y python

# get terminal:
$ udocker run r-container bash
```

## Run R scripts

Use these options to run scripts:

```sh
# assuming the script is in you home/project, and named 'my-script.r'
$ udocker -q run --bindhome r-container Rscript ~/project/my-script.r

# or, less recommended
$ udocker -q run --bindhome r-container R --vanilla -f ~/project/my-script.r

# if the file is /vol/scratch/`whoami`/project/script.r:
$ udocker -q run --volume=/vol/scratch/`whoami`/:/scripts r-container Rscript /scripts/project/my-script.r
```

## Run scripts using slurm

TODO

## Using this repo

TODO

TODO: add passing DISPLAY and R studio  
udocker -q run -e=DISPLAY:$DISPLAY  
udocker -q run -e=DISPLAY:192.168.1.2  
