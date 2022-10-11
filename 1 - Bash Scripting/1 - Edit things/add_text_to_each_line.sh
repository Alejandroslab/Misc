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
echo -n "Digitare ora il/i termine/i da aggiungere (NON aggiungere spazi ALL'INIZIO): "
read termine
echo 

if [[ $termine == "" ]]
then
	echo "Digita il termine da aggiungere"
else
	break
fi

#done
echo
echo -n "Ok il termine da aggiungere è: '$termine'. Procedo (y/n)?"
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





sed -i s/$/" $termine"/ $myfile


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
