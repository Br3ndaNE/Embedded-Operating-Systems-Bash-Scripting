#!/usr/bin/env bash

var1=$(find $1 -type f)


for x in $var1; do
#	echo $x
	mv $x $2
done

rmdir $1

echo " files have been moved & directory has been deleted "
