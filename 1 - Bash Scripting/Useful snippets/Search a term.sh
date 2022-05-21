for (( ; ; ));
#the "for...do" will create a persistent loop
do
#tput commands are needed for color management 'setaf 6' will set a color and 'sgr0' will set it back to default
echo "$(tput setaf 6)SEARCH A TERM $(tput sgr0)"
echo
echo -n "Digita il/i termine/i da cercare:  "
read -a termine

#The "" (without spaces) correspondes to just press enter without typing any character
if [[ $termine == "" ]]
then
	echo "Digita un termine"
	#break 
else
	break
fi
done
