TODAY := $(shell date)
NLINES := $(shell wc -l < guessinggame.sh | xargs)

README.md:
	echo "#Week 4 Assignment  " > README.md
	mydate=$(date)
	eval echo "last modified on $(TODAY)" >> README.md
	echo "  " >> README.md
	echo ":+1:  " >> README.md
	echo "This package was developed as part of the online Course" >> README.md
	echo "The Unix Workbench  " >> README.md
	echo "Offered by Johns Hopkins University through [Coursera](https://www.coursera.org)  " >> README.md
	echo "\s\s"
	echo "It consists of a bash shell script called guessinggame.sh" >> README.md
	echo "When run, the user is asked to guess the number of files in the current directory." >> README.md
	echo "The program ends when they guess correctly.\s\s" >> README.md
	echo "The file guessinggame.sh has $(NLINES) lines" >> README.md

clean:
	rm README.md
