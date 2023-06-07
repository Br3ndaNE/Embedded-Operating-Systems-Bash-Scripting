#!/usr/bin/env bash
 
 var1="$1"
 

 case "${file##*.}" in 
 	"py" )
 	python3 $var1
 	;; 
 	"cc")
  	cat $var1
 	;; 
 	"sh")
  	bash $var1
 	;; 
esac

echo done
