#!/bin/bash

mkdir  new_dir

cd new_dir

touch file.txt

if ls *.txt; then
	echo ".txt file is present"

else
	echo ".txt file not present"

fi

    
