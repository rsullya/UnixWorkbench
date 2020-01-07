
echo "Hello to Guessing game"

function guessingGame {

	echo "Enter a guess to find the number of files in current directory :"
	read num_files

        #to find the number of files present
        file_count=$(ls -1rt | wc -l)

	while [[ $file_count -ne $num_files ]]
	do
		if [[ $file_count -gt $num_files ]]
		then
			echo "Guessed number incorrect and is too low"
			echo "Guess again "
			read num_files
		elif [[ $file_count -lt $num_files ]]
		then
			echo "Guessed number incorrect and is too high"
			echo "Guess again"
			read num_files
		fi
		done

	echo "Congratulations. You have guessed correctly"
	echo "Correct number of files : $file_count"
        echo "Files in directory " && ls

}

guessingGame



