#!/bin/bash
#Tableau des articles
cards=("rtx3060" "rtx3070" "rtx3080" "rtx3090" "rx6700")

#la date s'affiche avant chaque tour de boucle for
date +%T >> ~/TP_HUGUES/sales.txt

#boucle for pour parcourir les valeurs du tableau
for card in ${cards[*]}
do
	#on va chercher les infos de vente pour chaque carte graphique
	sales=$(curl -s "http://10.0.2.15:5000/$card")
	echo "le nombre de $card vendu cette minute est de : $sales" >> ~/TP_HUGUES/sales.txt
done
