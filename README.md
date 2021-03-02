# slurm-basic
basic project with slurm infrastructure - simple exaples


## basic run steps
Clone the repository, and enter the dirctory:

```sh
$ git clone git@github.com:yuvalyehudab/slurm-basic.git
$ cd slurm-basic
```
Check the status of the system:

```sh
$ w
$ sinfo
$ squeue
```

There are 2 kinds of examples: 1/ simple python script 2/ python script inside a container

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

Bonus - replace your shell constantly:
1/ Run the following

```sh
$ bash
$ printf "if (\$?prompt) then\n\t setenv SHELL /bin/bash\n\t exec \$SHELL\n endif\n" >> .tcshrc
```

2/ Log out - you will need to logout twice
3/ Now every time you log in you will get bash as your shell
