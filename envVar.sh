#!/usr/bin/env bash

#travis does not allow echo travis environment variables to a file
#scripts takes travis environment variable as a parameter and creates a file

envVar=$1
path=$2

if [ -z $1 ]; then
    echo "Usage: ./envVar.sh {travis_varibale} {optional path}"
    exit
fi

echo ${!envVar} > ${path}${envVar}