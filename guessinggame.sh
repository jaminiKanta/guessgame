#!/bin/bash
clear
fcount=`ls -a|wc -l`
guessfilecount()
{
        echo -n "Guess.. how many files are in the current directory: "
        read gcount

        if ! [[ "$gcount" =~ ^[0-9]+$ ]]
        then
                echo "Please try to provide only integers"

        elif [ $gcount -eq $fcount ]
        then
                echo "Congrats, Guessing is correct"
                exit 0
        elif [ $gcount -le $fcount ]
        then
                echo "Try again, Guessing count is lessthan Actual count"
        elif [ $gcount -gt $fcount ]
        then
                echo "Try again, Guessing count is greaterthan Actual count"
        fi
}
while true
do
        guessfilecount
done
