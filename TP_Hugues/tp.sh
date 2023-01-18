#!/bin/bash
cards=("rtx3060" "rtx3070" "rtx3080" "rtx3090" "rx6700")

date +%T >> ~/TP_HUGUES/sales.txt
for card in ${cards[*]}
do
	sales=$(curl -s "http://10.0.2.15:5000/$card")
	echo "le nombre de $card vendu cette minute est de : $sales" >> ~/TP_HUGUES/sales.txt
done
