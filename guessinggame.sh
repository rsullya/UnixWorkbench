#!/usr/bin/env bash

echo "Welcome to Guessing game"

function ask {
	echo "Please enter the number of files in the current directory:"
	read guess
    files=$(ls -1rt | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Well done! Congratulations! Correct answer, here are list of files:"
echo "---" && ls -1rt

