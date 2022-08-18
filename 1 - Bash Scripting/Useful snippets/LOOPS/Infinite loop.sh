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
                #or you can close your code with 'exit 1'
        fi


done
