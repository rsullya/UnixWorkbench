all: README.md

README.md: guessinggame.sh
        echo "## The Unix Workbench course assignment" > README.md
        echo "by *Johns Hopkins University* on *[coursera.org](https://www.coursera.org/)* <br />" >> README.md
        echo "**Description**: make a program called *guessinggame.sh*. This program should continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated  <br />" >> README.md
        echo -n "**Make date**:  <br />" >> README.md
        date >> README.md
        echo -n "**Number of lines in guessinggame.sh:**  <br />" >> README.md
        grep -c '' guessinggame.sh >> README.md

clean:
        rm README.md
