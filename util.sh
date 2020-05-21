 
base () {
	
g='\033[1;92m'
y='\033[1;93m'
echo "$g Installation des Requirements  .......$y"
apt-get install toilet
apt-get install figlet
clear
echo -e "\033[92m Bienvenue dans la base des commande de Termux $g"
echo
figlet Termux | toilet -f term -F gay
figlet base  | toilet -f term -F gay
sleep 2
echo " "
echo -e "$y L'installation commence dans 10 secondes $y"
echo " "
sleep 5
echo -e "\033[1;96m"
echo "10 secondes"
sleep 1
clear
echo " 9 secondes"
sleep 1
clear
echo " 8 secondes"
sleep 1
clear
echo " 7 secondes"
sleep 1
clear
echo " 6 secondes"
sleep 1
clear
echo " 5 secondes"
sleep 1
clear
echo " 4 secondes"
sleep 1
clear
echo " 3 secondes"
sleep 1
clear
echo " 2 secondes"
sleep 1
clear
echo " 1 secondes"
sleep 1
clear
a='\033[1;91m'
b='\033[1;92m'
c='\033[1;93m'
d='\033[1;94m'
e='\033[1;95m'
f='\033[1;96m'
echo -e "$a MISE A JOUR............$b"
sleep 1
apt upgrade
apt update
clear
echo -e "$c Installation de python.....$d"
sleep 1
apt-get install python
clear
echo "$e Installation de Git.......$f"
sleep 1
apt-get install git
echo "$a Installation de curl....... $b"
sleep 1
apt-get install curl
clear
echo "$c Installation de Python2.........$d"
sleep 1
apt-get install python2
clear
echo "$e Installation de php........ $f"
sleep 1
apt-get install php
clear
echo "$a Installation de Root-Repo....... $b"
sleep 1
apt install root-repo
clear
echo "$c Installation de aircrack-ng.........$d"
sleep 1
apt install aircrack-ng
clear
echo "$e Installation de wireless-tool........ $f"
sleep 1
apt install wireless-tools
clear
echo "$a Installation de iw......$b"
sleep 1
apt install iw
clear
echo "$c Installation de ethtool.......$d"
sleep 1
apt install ethtool
clear
echo "$e Installation de tshark........$f"
sleep 1
apt install tshark
clear
echo "$a Installation de clang..........$b"
sleep 1
apt install clang -y
clear
echo "$c Installation de bash....... $d"
sleep 1
apt-get install bash
clear
echo "$e Installation de dnsmasq........$f"
sleep 1
apt install dnsmasq
clear
echo "$a Installation de wget........ $a"
sleep 1
apt-get install wget
clear
echo "$b Installation de ne......... $c"
sleep 1
apt-get install ne
clear
echo "$d Installation de netcat........$e"
sleep 1
apt-get install netcat
clear
echo "$f Installing openssl-tool........$a"
sleep 1
apt-get install openssl-tool
clear
echo "$aInstallation de openssh........$c"
sleep 1
apt-get install openssh
clear
echo "$d Installation de perl.........$e"
sleep 1
apt-get install perl
clear
echo "$f Installation de unstable-repo........... $a"
sleep 1
apt-get install unstable-repo
clear
echo "$b Installation de nodejs..........$c"
sleep 1
apt-get install nodejs
clear
echo "$d Installation de mpv.........$e"
sleep 1
apt-get install mpv
clear
echo "$f Installation de termux-api....... $a"
apt-get install termux-api
clear
echo "$b Installation de w3m......... $c"
sleep 1
apt-get install w3m
clear
echo "$d Mise a jour de  pip........ $e"
pip install --upgrade pip
clear
echo "$f Mise a jour de pip2........$a"
sleep 1
pip2 install --upgrade pip
clear
pip -V
pip2 -V
python -V
sleep 3
clear
echo "$b Installation de unstable-repo..........$c"
sleep 1
apt-get install unstable-repo
clear
echo "$d Installation de sl .........$e"
sleep 1
apt-get install sl
clear
echo "$f Installation de tree ...........$a"
sleep 1
apt-get install tree
clear
echo "$b Installation de x11-repo ..........$c"
sleep 1
apt-get install x11-repo
clear
echo "$d Installation de zip .........$e"
sleep 1
apt-get install zip
clear
echo "$f Installation de Tmux ........... $a"
sleep 1
apt-get install tmux
clear
echo "$b Installation de tor ............$c"
sleep 1
apt-get install tor
clear
echo "$d Installation de vim .........$e"
sleep 1
apt-get install vim
clear
echo -e "\033[96m Installation de mc........."
sleep 1
apt-get install mc
clear
printf "\033[92m Installation de Bc........"
sleep 1
apt-get install bc
clear
printf "\033[93m Installation de Moon-buggy........"
apt-get install moon-buggy
clear
toilet -f standard -F border -F gay Terminer
echo " "
echo " "
echo "$a Merci d'utiliser ces outils $b"


}


image () {
	echo -e "\033[92m"
	figlet Termux
	}
	faxel () {
		
		
		apt update
		apt upgrade
		apt-get install figlet
		apt-get install toilet
		apt-get install curl
		apt-get install php
		apt-get install wget
		apt-get install netcat
		apt-get install openssh
		apt-get install w3m
		clear
		echo
		image
		
		
		}
debut () {
	
	clear
	image
	printf "\n"
	printf "\n\n \033[91m 	{ 1 }\033[93m Commandes d'utilisation quotidienne Termux\n"
	printf "\033[91m  	{ 2 }\033[93m Termux Beaucoup de commandes\n\n"
	printf "\n \033[96m 	Mr Hacker_K \n\n\033[91m"
	printf %s "Selectionner une option valide >> "
	read termux
	case $termux in
	1|01)faxel ;;
	2|02)base ;;
	esac
	}
	echo
	echo
echo -e -n "\033[92m Voulez vous  installer \033[91m (\033[93m O/N\033[91m ) "
read o
case $o in
o|O)debut ;;
n|N)exit 0 ;;
