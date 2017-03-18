#!/bin/bash

key1=$1
key2=$3
indir=$2 
outdir=$4

if [[ "$key1" == "-o" && "$key2" == "-i" ]]
	then
		outdir="$2"
		indir="$4"
	else
		if [[ "$key1" == "-i" && "$key2" == "-o" ]]
			then
				outdir="$4"
				indir="$2"
			else
				echo "Error: invalid argiments."
				exit 1
		fi
fi

find "$indir" -type f -executable -exec cp {} "$outdir" > /dev/null 2> /dev/null \;

