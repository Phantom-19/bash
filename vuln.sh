!/bin/sh

clear

echo "\033[1;94m"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "   _  _ _  _ _    _  _    ___ ____ ____ ___ "
echo "   |  | |  | |    |\ |     |  |___ [__   |  " 
echo "    \/  |__| |___ | \|     |  |___ ___]  |  "
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "\033[1;93m"
echo "  ----------------------Information-----------------------"
echo ""
echo " >> Author  =  Faxel"
echo ""
echo " >> Github  =  https://github.com/TechnicalMujeeb/HeartBleed.git"
echo ""
echo " >> Nom = Outil d'analyse de vulnérabilité de port openssl 443"
echo ""
echo "  ---------------------------------------------------------"
echo -n "\033[1;92m [-]  Ip de votre cible : "

read a
if [ ! -z $a ]
then
echo "[*] Chargement... "
echo ""
nmap -d --script=ssl-heartbleed --script-args=vulns.showall -sV $a 
else
echo "\033[31m[!] Veuillez saisir l'Ip de votre cible ! "
fi
