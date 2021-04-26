#!/bin/bash

# name: create-r-container.sh
# author: yuvalyehudab

if [[ -z UDOCKER_DIR ]]; then
    export UDOCKER_DIR=/vol/scratch/`whomai`/udocker
fi

udocker pull rocker/r-base
udocker create --name=r-container-1 rocker/r-base
