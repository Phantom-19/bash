#!/bin/bash

A='\033[34;1m'
V='\033[32;1m'
P='\033[35;1m'
C='\033[36;1m'
R='\033[31;1m'
B='\033[37;1m'
J='\033[33;1m'
clear
echo "Veuillez patienter..."
sleep 3
echo "Bienvenue chez Faxel"
sleep 5
clear
vert=$(tput setaf 2)
Traducteur(){
         serveurt=$(curl "https://translate.google.com/m?hl=id&sl=$mael&tl=$noel&ie=UTF-8&prev=_m&q=$TRA" --location --silent \
         -H 'authority: translate.google.com'  \
         -H 'pragma: no-cache' \
         -H 'cache-control: no-cache' \
         -H 'upgrade-insecure-requests: 1' \
         -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36' \
         -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
         -H 'accept-encoding: gzip, deflate, br' \
         -H 'accept-language: id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7' --compressed)
   faxel=$(echo -e "$serveurt" | grep -Po 'class="t0">(\D+)</div>' | cut -d ">" -f2 | cut -d "<" -f1)
  echo -n "$R[+]$B Resultat $R ===> $V  $faxel"
  echo ""
}
echo "${vert}"
cat << "EOF"

$B████████╗██████╗  █████╗ ██████╗ ██╗   ██╗ ██████╗████████╗███████╗██╗   ██╗██████╗ 
$C╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██║   ██║██╔════╝╚══██╔══╝██╔════╝██║   ██║██╔══██╗
$C   ██║   ██████╔╝███████║██║  ██║██║   ██║██║        ██║   █████╗  ██║   ██║██████╔╝
$C   ██║   ██╔══██╗██╔══██║██║  ██║██║   ██║██║        ██║   ██╔══╝  ██║   ██║██╔══██╗
$C   ██║   ██║  ██║██║  ██║██████╔╝╚██████╔╝╚██████╗   ██║   ███████╗╚██████╔╝██║  ██║
$R   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝  ╚═════╝   ╚═╝   ╚══════╝ ╚═════╝ ╚═╝  ╚═╝
       $A AUTEUR $R: $JFAXEL                        
                 $PGOOGLE TRADUCTION                             
EOF
echo ""
echo -n "$R[+]$C Votre Phrase a traduire $R :  $B "; read TRA
echo $J
echo "$R[+]$B Premièrement choisissez la langue de votre saisie. $R[+]\n$R[+]$B Soit$P fr en de ind ..etc $R[+]"
echo -n "$R[+]$J De : $A "; read mael
echo ""
echo "$R[+]$B Ensuite la langue dans laquelle vous voulez traduire $R[+]"
echo $J
echo -n "$R[+]$J A  : $J "; read noel
Traducteur
