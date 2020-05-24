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
apt update && upgrade -y
apt install -y wget
apt install -y php
apt install -y openssl
echo "[ Mise à jour terminée..]"  | lolcat
sleep 2
toilet -f pagga  Faxel  | lolcat
sleep 5

clear
l='\033[1;96m'
echo "$R
 $C░▒▓██████████►$V╬╬╬╬╬╬╬╬╬╬╬╬╬$C◄██████████▓▒░
 $C░▒▓██►$Re  ╔╗F╦╔═╗╔╗╔╦FF╦╔═╗╔╗╔╦F╦╔═╗  $C◄██▓▒░
 $C░▒▓██►$Ra  ╠╩╗║║╣F║║║╚╗╔╝║╣F║║║║F║║╣F  $C◄██▓▒░
 $C░▒▓██►$Rs  ╚═╝╩╚═╝╝╚╝F╚╝F╚═╝╝╚╝╚═╝╚═╝  $C◄██▓▒░
 $C░▒▓██████████►$V╬╬╬╬╬╬╬╬╬╬╬╬╬$C◄██████████▓▒░
 $C░▒▓██████████►$PAuteur $R:$Rs Faxel$C◄██████████▓▒░";   
 
echo ""
echo "$BVoulez-vous installer Ngrok ? $R[$VO$J/$An$R]"
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
    echo "$RArchitecture inconnue"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${l}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${l}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${l}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${l}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${l}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${l}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
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
echo "Exemple de Commande (ngrok http 80) ou ngrok pour l'aide" | lolcat
echo ""

;;

n)
clear
echo "Impossible d'installer Ngrok correctement." | lolcat
echo ""
esac


