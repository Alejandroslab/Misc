#!/usr/bin/env bash
#This will add the words you specify at the end of each line of a file (usually this is useful for csv files)
########################
#for (( ; ; ));
#do
echo "$(tput setaf 6)ADD WORDS TO LIST $(tput sgr0)"
echo "Accertarsi di essere nella cartella in cui e presente il file da modificare"
echo "Ecco i file presenti nella cartella corrente: "
ls -lah
echo
echo
echo -n "Digitare il nome del file da modificare (inclusa l'estensione): "
read -a myfile
#The "" (without spaces) correspondes to just press enter without typing any character

if [[ $myfile == "" ]]
then
	echo "Digita il nome di un file"
else
	break
fi

echo "Ok il file da modificare è:  $myfile"
echo

readarray -t startarray < $myfile

printf '%s \n' ${startarray[@]}

exit


echo -n "Digitare ora il file da cui aggiungere i termini da aggiungere: "
read -a filetoadd
echo 

if [[ $filetoadd == "" ]]
then
	echo "Digita il file da aggiungere"
else
	break
fi

readarray -t arraytoadd < $filetoadd

#done
exit 

echo
echo -n "Ok il file da aggiungere è: '$filetoadd'. Procedo (y/n)?"
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



for i in ${!startarray[@]}; do
   sed -i s/$/"  ${arraytoadd[$i]}"/ $i
done




echo -n "Fatto. Vuoi visualizzare il file (y/n)?"
read -a view
echo

if [ $view == 'y' ];then
        echo "Ok! Procedo"
	cat $myfile
elif [ $answer == 'n' ];then
        echo "Nessuna operazione verra eseguita. Arrivederci."
                exit 1
else
     echo "Nessuna operazione verra eseguita. Arrivederci."
                exit 1
fi





echo
echo "Fatto! Arrivederci"
exit
