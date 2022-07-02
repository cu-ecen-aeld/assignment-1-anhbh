#!/bin/bash

filesdir=$1
searchstr=$2

if [[ $# -eq 0 ]]
then
    echo "No argument provided"
    exit 1
fi

if [ ! -d "$filesdir" ]
then
    echo "Invalid file directory"
    exit 1
fi

X=`find $filesdir -type f | wc -l`
Y=`grep -nrI $searchstr $filesdir | wc -l`


echo "The number of files are $X and the number of matching lines are $Y"
