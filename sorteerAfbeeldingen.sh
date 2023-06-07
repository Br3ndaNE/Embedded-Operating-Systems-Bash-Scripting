#!/usr/bin/env bash

mkdir $2 

find $1 -type f -name "*.jpeg" -exec mv -t $2  {} +
find $1 -type f -name "*.png" -exec mv -t $2 {} +

echo done
