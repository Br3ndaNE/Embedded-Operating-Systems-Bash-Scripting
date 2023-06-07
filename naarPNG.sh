#!/usr/bin/env bash
var1=$(find $1 -type f -name "*.jpeg") 
for x in $var1
do 
	mv -- "$x" "${x%.jpeg}.png"
done

var2=$(find $1 -type f -name "*.png") 
for x in $var2
do 
	convert $x -resize 128x128 $x
done


