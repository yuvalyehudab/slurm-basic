# slurm-basic
basic project with slurm infrastructure - simple exaples


## Preparation
Clone the repository, and enter the dirctory:

```sh
$ cd /vol/scratch/<user>
$ git clone git@github.com:yuvalyehudab/slurm-basic.git
$ cd slurm-basic
```
Check the status of the system:

```sh
$ w
$ sinfo
$ squeue
```
## Basic run steps
There are 2 kinds of examples:  
1/ Simple python script  
2/ Python script inside a container

1/ Simple python script:

```sh
$ sbatch run.slurm
```

Wait until the script ends. the script itself is limited to 1 minute run. Then, check the results:

```sh
$ less awesome.out
$ less awesome.err
```
Or, if you want:
```sh
$ cat awesome.out awesome.err
```

2/ Python script inside a container  
Edit the files docker.slurm and script.sh - change ```SCRIPT_PATH``` to its real directory, for example:

```sh
SCRIPT_PATH=/home/<group>/<user>/slurm-basic
```
Now run with:
```sh
sbatch docker.slurm
```
Check the output and error just like in the previous example.  

## Extra
TODO: add slurm script in python - current are in bash. Use python.slurm  
TODO: Organize everything in different directories  
TODO: Add tensorflow container example  
TODO: Automate path changing in containers  

Bonus - replace your shell constantly:  
1/ Run the following

```sh
$ bash
$ printf "if (\$?prompt) then\n\t setenv SHELL /bin/bash\n\t exec \$SHELL\n endif\n" >> .tcshrc
```

2/ Log out - you will need to logout twice  
3/ Now every time you log in you will get bash as your shell
