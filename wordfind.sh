#!/usr/bin/env bash
if [[ $# -eq 0 ]] ; then
	    echo 'Usage: wordfind <path fo directory> <word to find>'
	        exit 0
fi
list=$(ls -p $1 | grep -v / > temp.txt)

input="temp.txt"
while read line
do
	cat $line | grep $2 
done < "$input"
rm temp.txt
