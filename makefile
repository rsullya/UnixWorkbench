all: README.md

README.md: guessinggame.sh
	echo "# THE UNIX WORKBENCH ## course assignment to guess number of files in directory" > README.md
	echo -n "**Make date**: " >> README.md
	date >> README.md
	echo -n " <br /> **Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh  >> README.md

clean:
	rm README.md

