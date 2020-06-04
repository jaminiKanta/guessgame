all: README.md

README.md: guessinggame.sh
	echo "#Thee Unix Workbench " > README.md
	echo >>README.md
	echo -e "\n **Description**: make a program called *guessinggame.sh*. This program should continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
	echo "**Make date**: `date`" >> README.md
	echo -e "\n **Number of lines in guessinggame.sh:** `cat guessinggame.sh|wc -l` " >> README.md

clean:
	rm README.md
