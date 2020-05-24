#!/bin/bash
A='\033[34;1m'
V='\033[32;1m'
P='\033[35;1m'
C='\033[36;1m'
R='\033[31;1m'
B='\033[37;1m'
J='\033[33;1m'
Ro ='\033[48;5;0;38;5;197m'
Rs ='\033[38;5;251m'
Re ='\033[38;5;110m'
Ra ='\033[38;5;227m'

clear
figlet -f small Mise a jour ! | lolcat
echo "Mise a jour de la librairie de termux..." | lolcat
echo ""
sleep 1
apt update && upgrade 
clear
apt install  wget
clear
apt install  php
clear
apt install  curl
clear
apt install  nano
clear
apt install  simplejson
clear
apt install  curl
echo ""
echo "[ Mise à jour terminée..]"  | lolcat
sleep 3
clear
echo ""
toilet -f pagga  Faxel  | lolcat
sleep 7

clear
echo " ░▒▓██████████►╬╬╬╬╬╬╬╬╬╬╬╬╬◄██████████▓▒░"  | lolcat  
echo " ░▒▓██►  ╔╗F╦╔═╗╔╗╔╦FF╦╔═╗╔╗╔╦F╦╔═╗  ◄██▓▒░"  | lolcat  
echo " ░▒▓██►  ╠╩╗║║╣F║║║╚╗╔╝║╣F║║║║F║║╣F  ◄██▓▒░"  | lolcat  
echo " ░▒▓██►  ╚═╝╩╚═╝╝╚╝F╚╝F╚═╝╝╚╝╚═╝╚═╝  ◄██▓▒░"  | lolcat  
echo " ░▒▓██████████►╬╬╬╬╬╬╬╬╬╬╬╬╬◄██████████▓▒░"   | lolcat  
echo " ░▒▓██████████►Auteur : Faxel◄██████████▓▒░"   | lolcat  
 
echo ""
echo "Voulez-vous installer Ngrok ? [O/n]" | lolcat
read -p      "Faxel@Mr Hacker_K~#" oui
case $oui in
o)
echo ""
echo "Téléchargement de ngrok pour termux..." | lolcat
toilet -f pagga  NGROK  | lolcat
sleep 2
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Architecture inconnue" | lolcat
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗" | lolcat
echo "████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝" | lolcat
echo "██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ " | lolcat
echo "██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ " | lolcat
echo "██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗" | lolcat
echo "╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝" | lolcat
sleep 1
echo ""
echo "╔═══'•'๑۩۞۩๑•══•๑۩۞۩๑•══•๑۩۞۩๑•══•๑۩۞۩๑'•'═══╗ " | lolcat
echo "    ˛╬╬╬╬╬˛°.｜田田 ｜門｜╬╬╬╬╬—╬╬╬╬╬ " | lolcat
echo "    ……………..  ^v^ " | lolcat  
echo "    ⋱ ⋮ ⋰ " | lolcat  
echo "    ⋯ ◯ ⋯¨. ︵ ……………………………………….     ^v^ " | lolcat  
echo "    ¨︵¸︵( ░░ )︵.︵.︵………….. ^v^ " | lolcat  
echo "    (´░░░░░░ ‘) ░░░’ )  ) " | lolcat  
echo "    ……………………………………..   ︵.︵ " | lolcat  
echo "    …….………………………………. (˛. *˛.)…….. ^v^ " | lolcat  
echo "    ………………………………….. (˛˛. *。 ) " | lolcat  
echo "    ……….…………. (˛* ˛*˛* ) " | lolcat  
echo "          ˛_Π_____. " | lolcat  
echo "    ……………./______/~＼…………\..|.| " | lolcat  
echo "    ˛╬╬╬╬╬˛°.｜田田 ｜門｜╬╬╬╬╬—╬╬╬╬╬ " | lolcat  
echo "╚═══'•'๑۩۞۩๑•══•๑۩۞۩๑•══•๑۩۞۩๑•══•๑۩۞۩๑'•'═══╝ "| lolcat
echo ""
echo ""
echo "Telechargment reussie !!"| lolcat
echo ""
sleep 1
echo "Exemple de Commande (ngrok http 80) ou ngrok pour l'aide" | lolcat
echo ""

;;

n)
clear
toilet -f pagga  Faxel  | lolcat
sleep 2
echo "Impossible d'installer Ngrok correctement :(" | lolcat
echo ""
esac


