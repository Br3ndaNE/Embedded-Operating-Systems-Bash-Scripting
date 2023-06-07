#!/usr/bin/env bash

passwordfile=$1 

echo "What is your name" 

read name

if [ -z "$name" ]; then 
name=$(whoami)
fi

while true; do 

echo "Password:"
read first_password
echo "Confirm password:"
read second_password

if [ "$first_password" == "$second_password" ] && [ "${#first_password}" -gt 1 ] && [ "${#second_password}" -gt 1 ]; then
	echo "account created"
	echo "$name" >> "$passwordfile"
	md5_hash=$(echo -n "$first_password" | md5sum)
	echo "$md5_hash" >> "$passwordfile"
	break
else
	echo "rewrite it, passwords are not equal or have less than 8 length" 
fi
done
