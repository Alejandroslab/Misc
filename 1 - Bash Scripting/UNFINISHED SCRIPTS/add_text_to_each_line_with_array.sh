#!/usr/bin/env bash
#This will add the words you specify at the end of each line of a file (usually this is useful for csv files)
########################
#for (( ; ; ));
#do
echo "$(tput setaf 6)ADD WORDS TO LIST $(tput sgr0)"
echo "Accertarsi di essere nella cartella in cui e presente il file da modificare"
echo "Ecco i file presenti: "
ls -lah
echo
echo
echo -n "Digitare il nome del file da modificare (inclusa l'estensione): "
read -a myfile


if [[ $myfile == "" ]]
then
	echo "Digita il nome di un file"
else
	break
fi

echo "Ok il file da modificare è:  $myfile"
echo

#inserisco in un array

readarray -t startarray < $myfile
echo
echo "Ecco l'array:"
echo
printf '%s \n' "${startarray[@]}"
echo
#exit



####################################################################
echo -n "Digitare ora il file da cui aggiungere i termini da aggiungere: "
read -a filetoadd
echo 
###
if [[ $filetoadd == "" ]]
then
	echo "Digita il file da aggiungere"
else
	break
fi
###

readarray -t arraytoadd < $filetoadd
echo
echo "Ecco il secondo array"
echo
printf '%s \n' "${arraytoadd[@]}"
#echo ${arraytoadd[0]}
#echo  ${arraytoadd[1]}
#done

################################################################### 

echo
echo -n "Ok il file da aggiungere è: '$filetoadd'. Procedo (y/n)? "
read -a procedo
echo 

if [ $procedo == 'y' ];then
        echo "Ok! Procedo"
elif [ $answer == 'n' ];then
        echo "Nessuna operazione verra eseguita. Arrivederci."
		exit 1
else
     echo "Nessuna operazione verra eseguita. Arrivederci."
		exit 1
fi
####################################################################
#for k in "${#startarray[@]}"; do

####### HERE THIS FOR LOOP WILL ONLY PRINT THE SECOND ELEMENT AND NOT THE FIRST ONE. MUST BE FIXED#########

	for i in "${arraytoadd[@]}"; do

		echo "$i"
		final=(  "${startarray[@]/%/ $(echo "$i")}" )

		#		final=(  $(echo "$k")/%/$(echo "$i") )

	done
#done

echo

#cnt=${#startarray[@]}

#for ((i=0;i<cnt;i++)); do
#	startarray[$i]= "${startarray[$i]} $i"
	#echo "${startarray[@]}"
#done

#exit

printf '%s \n' "${final[@]}" > $myfile





echo -n "Fatto. Vuoi visualizzare il file (y/n)?"
read -a view
echo

if [ $view == 'y' ];then
        echo "Ok! Procedo"
	echo
	cat $myfile
elif [ $view == 'n' ];then
        echo "Nessuna operazione verra eseguita. Arrivederci."
                exit 1
else
     echo "Nessuna operazione verra eseguita. Arrivederci."
                exit 1
fi





echo
echo "Fatto! Arrivederci"
exit
