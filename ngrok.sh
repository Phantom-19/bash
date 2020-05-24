#!/bin/bash

clear
figlet -f small Mise a jour ! | lolcat
echo "Mise a jour de la librairie de termux..." | lolcat
echo ""
sleep 1
apt update && upgrade -y
apt install -y wget
apt install -y php
apt install -y openssl
echo "[ Mise à jour terminée..]"  | lolcat
sleep 2
toilet -f pagga  Faxel  | lolcat
sleep 5

clear
k='\033[1;96m'
echo "
\033[0;32m ░▒▓\033[1;92m██████████►\033[1;95m╬╬╬╬╬╬╬╬╬╬\033[1;92m◄██████████\033[0;32m▓▒░
\033[0;32m ░▒▓\033[1;92m██►\033[38;5;251m╔╗F╦╔═╗╔╗╔╦FF╦╔═╗╔╗╔╦F╦╔═╗\033[1;92m◄██\033[0;32m▓▒░
\033[0;32m ░▒▓\033[1;92m██►\033[38;5;110m╠╩╗║║╣F║║║╚╗╔╝║╣F║║║║F║║╣F\033[1;92m◄██\033[0;32m▓▒░
\033[0;32m ░▒▓\033[1;92m██►\033[38;5;227m╚═╝╩╚═╝╝╚╝F╚╝F╚═╝╝╚╝╚═╝╚═╝\033[1;92m◄██\033[0;32m▓▒░
\033[0;32m ░▒▓\033[1;92m██████████►\033[1;95m╬╬╬╬╬╬╬╬╬╬\033[1;92m◄██████████\033[0;32m▓▒░
\033[0;32m ░▒▓\033[1;92m██████████►\033[1;95mAuteur\033[1;91m :\033[48;5;0;38;5;197m Faxel\033[1;92m◄██████████\033[0;32m▓▒░";
    
echo
echo "\033[1;97mVoulez-vous installer Ngrok ? \033[1;91m[\033[1;92mO\033[1;91m/\033[1;94mn\033[1;91m]"
read oui
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
    echo "\033[1;91m Architecture inconnue"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
sleep 1
echo "
……………..  ^v^
⋱ ⋮ ⋰
⋯ ◯ ⋯¨. ︵ ……………………………………….     ^v^
¨︵¸︵( ░░ )︵.︵.︵………….. ^v^
(´░░░░░░ ‘) ░░░’ )  )
`´︶´¯`︶´`︶´︶´`︶…..^v^………   . ^v^
……………………………………..   ︵.︵
…….………………………………. (˛. *˛.)…….. ^v^
………………………………….. (˛˛. *。 )
……….…………. (˛* ˛*˛* )
      ˛_Π_____.
……………./______/~＼…………\..|.|
˛╬╬╬╬╬˛°.｜田田 ｜門｜╬╬╬╬╬—╬╬╬╬╬
╔═══'•'๑۩۞۩๑•══•๑۩۞۩๑•══•๑۩۞۩๑•══•๑۩۞۩๑'•'═══╗";
echo ""
echo ""
echo "Telechargment reussie !!"| lolcat
echo ""
sleep 1
echo "\033[1;97mExemple de Commande  (\033[1;95mngrok http 80\033[1;97m) \n\nou  ngrok pour l'aide" 
echo ""

;;

n)
clear
echo "\033[1;91mImpossible d'installer Ngrok correctement:("
echo ""
esac


