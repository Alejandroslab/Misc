#!/usr/bin/env bash

for (( ; ; ));

do
echo -n "Are you ok? "
read -a answer

        if [ $answer == 'y' ];then
                echo "Ok! I'm glad that you are fine. Bye!"
                break

        fi


done
