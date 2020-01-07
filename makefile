all: README.md

README.md: guessinggame.sh
	echo "# THE UNIX WORKBENCH " > README.md
	echo "## Course assignment to guess number of files in directory" >> README.md
	echo -n "**Make date** : " >> README.md
	date +'%d-%h-%Y %r %Z' >> README.md
	echo -n -e "\n**Lines of code in scipt guessinggame.sh** : " >> README.md
	wc -l < guessinggame.sh  >> README.md

clean:
	rm README.md

