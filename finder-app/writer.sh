#!/bin/bash

writefile=$1
writestr=$2

if [ $# -eq 0 ]
then
    echo "Invalid argument"
    exit 1
fi

DIR="$(dirname "$writefile")"
FILE="$(basename "$writefile")"
if [ ! -d $DIR ]
then
    mkdir -p $DIR
fi
echo $writestr > $writefile

