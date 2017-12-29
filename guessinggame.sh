#!/bin/bash

nfiles=$(ls | wc -l)
uguess=-1
nguesses=0

function fanfare {
    if [[ $1 -eq 1 ]]
    then
       echo "Correct! Well Done! You did it in $1 guess!"
       echo "          "
       echo "^^^^^^^^^^"
       echo "  O    O  "
       echo "     |    "
       echo "\________/"
       echo " \______/ "
       echo "          "
    elif [[ $1 -gt 5 ]]
    then
       echo "Correct! But it did take you $1 guesses.  Work on your guessing skills!"
    else
       echo "Correct! Well Done! It only took you $1 guesses!"
    fi
}

echo "Guess the number of files in the current directory"
while [[ $uguess -ne $nfiles ]]
do
    let nguesses=$nguesses+1
    read uguess
    if [[ $uguess -gt $nfiles ]]
    then
       echo "Nope - Too high"
    elif [[ $uguess -lt $nfiles ]]
    then
       echo "Nope - Too low"
    else
       fanfare $nguesses
    fi
done


