#!/bin/bash

# name: create-r-container.sh
# author: yuvalyehudab

if [[ -z UDOCKER_DIR ]]; then
    export UDOCKER_DIR=/vol/scratch/`whomai`/udocker
fi

CONTAINER_EXIST=`udocker ps | grep r-container`

if [[ -z ${CONTAINER_EXIST} ]]; then
    IMAGE_EXIST=`udocker images | grep r-base`
    if [[ -z ${IMAGE_EXIST} ]]; then
        udocker pull rocker/r-base
    fi
    udocker create --name=r-container rocker/r-base
fi