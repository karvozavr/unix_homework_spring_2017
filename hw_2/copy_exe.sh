#!/bin/bash

key1=$1
key2=$3
indir=$2 
outdir=$4

if [[$1 == "-h" || $1 == "--help"]]
	then
		echo "Usage: ./copy_exe -i \"src_dir\" -o \"dst_dir\""
fi

if [[key1 == "-o" && $key2 == "-i"]]
	then
		outdir=$2
		indir=$4
	else
		if [[key1 == "-i" && $key2 == "-o"]]
			outdir=$4
			indir=$2
		else
			echo "Error: invalid argiments. Use \"./copy_exe.sh -h\" or \"./copy_exe.sh --help\" to see \"help\" information."
			return 1
		fi
fi

find $indir -type f -executable -print -exec cp {} $outdir

