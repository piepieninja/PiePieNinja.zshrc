# An example of how to write to the terminal without a constant clear
#!/bin/bash

##
#
# Author: Caleb Adams
# CalebDevelops.com
#
# GitHub Gist: https://gist.github.com/piepieninja/531efce03f18008b7b5e
# Shell Repo: https://github.com/piepieninja/PiePieNinja.zshrc/
#
## 

LINES=$(tput lines)
COLUMNS=$(tput cols)
 
declare -A snowflakes
declare -A lastflakes
 
clear

function move_flake() {
    i="$1"
    
    if [ "${snowflakes[$i]}" = "" ] || [ "${snowflakes[$i]}" = "$LINES" ]; then
	snowflakes[$i]=0
    else
	if [ "${lastflakes[$i]}" != "" ]; then
	    printf "\033[%s;%sH \033[1;1H " ${lastflakes[$i]} $i
	fi
    fi
    
    printf "\033[%s;%sH*\033[1;1H" ${snowflakes[$i]} $i
    
    lastflakes[$i]=${snowflakes[$i]}
    snowflakes[$i]=$((${snowflakes[$i]}+1))
}

while :
do
    i=$(($RANDOM % $COLUMNS))
    
    move_flake $i

    for x in "${!lastflakes[@]}"
    do
	move_flake "$x"
    done
    
    sleep 0.1
done
