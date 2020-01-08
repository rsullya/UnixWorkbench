
echo "Hello to Guessing game"

function guessingGame {

	echo "Enter a guess to find the number of files in current directory :"
	read num_files

        #to find the number of files present
        file_count=$(ls -A | wc -l)
	re='^[0-9]+$'

        while [[ $file_count -ne $num_files ]] 2>/dev/null &&  [[ $num_files =~ $re ]] 
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
        if [[ $file_count -eq $num_files ]] 2>/dev/null
        then 
		echo "Congratulations. You have guessed correctly"
                echo "Correct number of files : $file_count"
                echo "Files in directory " && ls -A
	else
		echo "Invalid input given, provide a number"
		guessingGame
	fi

}

guessingGame



