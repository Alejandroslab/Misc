#!/usr/bin/env bash

for (( ; ; ));
#Remember that the spacing in this 'for' are mandatory!
#if you type 'for ((;;));' it will not work
do
echo -n "Are you ok? "
read -a answer

        if [ $answer == 'y' ];then
                echo "Ok! I'm glad that you are fine. Bye!"
                break
        else
                echo "oh. I'm sorry ! bye!"
                break
                #break. will exit the 'if' statement. If you want to close all the script you can close your code with 'exit 1'
        fi


done


##########
#sh myscript.sh

#Sometimes you may incur in 'Bar loop variable' error
#to overcome this errore you will need to make the script executable 
