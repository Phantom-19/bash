cd $PREFIX/bin
if [ -e Whatsapp ];then
clear
cd ~/Whatsapp-Settings
printf "\033[96m Requirement installed\n\n"
else
clear
printf "\033[93m [+] Requirement found\n\n"
sleep 2
printf "\033[96m [+] Installing Requirements\n\n"
sleep 2
printf "\033[91m [+] Now Updating....\n"
sleep 1
apt update
apt upgrade
clear
printf "\033[92m [+] Installing figlet .......\n"
sleep 1
apt-get install figlet
printf "\033[93m [+] Installing toilet.......\n"
sleep 1
apt-get install toilet
clear
printf "\033[94m [+] Installing tsu.....\n"
sleep 1
apt-get install tsu
clear
cd ~/Whatsapp-Settings
printf "\033[95m [+] Installing Whatsapp command.....\n"
cp -f Whatsapp $PREFIX/bin
chmod 777 $PREFIX/bin/Whatsapp
clear
printf "\033[96m [√] Successfully setup\n\n Now u can use this command :- Whatsapp"
read
fi
su -c cd /dev/block
if [ -e bootdevice ];then
clear
echo -e "\033[96m Your phone  root"
else
clear
printf "\033[91m [×] Your phone not root \n\n [*] First root your phone then use this !!! \n\n"
fi
lal="\e[91m"
cd $HOME/Whatsapp-Settings
echo -e "\033[1;92m"
figlet Whatsapp | toilet -f term -F gay
figlet Menu | toilet -f term -F gay

echo
printf "		$lal[ 1 ]\033[92m Whatsapp Clear Data\n"
printf "		$lal[ 2 ]\033[92m Whatsapp All Chat delete\n"
printf "		$lal[ 3 ]\033[92m Whatsapp Uninstall\n"
printf "		$lal[ 4 ]\033[92m Whatsapp Stickers Delete\n"
printf "		$lal[ 5 ]\033[92m Whatsapp Log Delete\n"
printf "		$lal[ 6 ]\033[92m Copy Whatsapp Logs\n"
printf "		$lal[ 7 ]\033[92m Copy Whatsapp Stickers\n"
printf "		$lal[ 8 ]\033[92m Copy Whatsapp Avatars\n"
printf "		$lal[ 9 ]\033[92m Whatsapp Avatars Delete\n"
printf "		$lal[ 10 ]\033[92m Whatsapp Chat Backup\n"
printf "		$lal[ 11 ]\033[92m Whatsapp Chat Restore\n"
printf "		$lal[ 12 ]\033[92m Whatsapp setting Update\n"
printf "		$lal[ 13 ]\033[92m Whatsapp Stickers Backup\n"
printf "		$lal[ 14 ]\033[92m Whatsapp Stickers Restore\n"
echo -e "   		$lal[ 15 ]\033[92m Exit"
echo -e "\e[1;91m"
read -p '	Whatsapp >>' opt
echo -e "\e[1;93m"

if [ $opt -eq 1 ];then
echo -e "\033[1;93m"
clear
echo "please wait...."
rm -Rf /data/data/com.whatsapp/*
sleep 5
echo
echo "Successfully cleared data"
sleep 2
bash menu.sh
fi
if [ $opt -eq 2 ];then
echo -e "\033[1;93m"
clear
echo "please wait......."
rm -f /data/data/com.whatsapp/databases/msgstore.db
sleep 5
echo "successfully chat deleted"
sleep 2
bash menu.sh
fi
if [ $opt -eq 3 ];then
echo -e "\033[1;93m"
clear
echo "please wait......"
tsu -c rm -Rf /data/app/com.whatsapp*
sleep 5
echo "Successfully uninstalled (reboot needed)"
sleep 2
bash menu.sh
fi
if [ $opt -eq 4 ];then
echo -e "\033[1;93m"
clear
echo "please wait....."
rm -Rf /data/data/com.whatsapp/files/Stickers
rm -f /data/data/com.whatsapp/databases/stickers.db
sleep 5
echo "Successfully deleted stickers"
sleep 2
bash menu.sh
fi
if [ $opt -eq 5 ];then
clear
echo -e "\033[1;93m"
echo "please wait......."
rm -Rf /data/data/com.whatsapp/files/Logs
sleep 5
echo "Successfully deleted Whatsapp Logs"
sleep 2
bash menu.sh
fi
if [ $opt -eq 6 ];then
clear
echo -e "\033[1;93m"
echo "please wait......"
cp -Rf /data/data/com.whatsapp/files/Logs /sdcard/WHATSAPP-FILES/Logs
sleep 5
echo "Successfully Copied Whatsapp Logs in WHATSAPP-FILES"
sleep 2
bash menu.sh
fi
if [ $opt -eq 7 ];then
echo -e "\033[1;93m"
clear
echo "please wait........"
cp -Rf /data/data/com.whatsapp/files/Stickers /sdcard/WHATSAPP-FILES
echo "Successfully Copied Stickers in WHATSAPP-FILES"
sleep 2
bash menu.sh
fi
if [ $opt -eq 8 ];then
clear
echo -e "\033[1;93m"
echo "please wait......."
cp -Rf /data/data/com.whatsapp/files/Avatars /sdcard/WHATSAPP-FILES/Avatars
sleep 5
echo "Successfully Copied Whatsapp Avatars in WHATSAPP-FILES"
sleep 2
bash menu.sh
fi
if [ $opt -eq 9 ];then
clear
echo -e "\033[1;93m"
echo "please wait......."
rm -Rf /data/data/com.whatsapp/files/Avatars
sleep 5
echo "Successfully Deleted Whatsapp Avatars"
sleep 2
bash menu.sh
fi
if [ $opt -eq 10 ];then
echo "Please wait......"
cp -f /data/data/com.whatsapp/databases/msgstore.db /sdcard/WHATSAPP-FILES
sleep 3
echo "Successfully Backuped"
Whatsapp
fi
if [ $opt -eq 11 ];then
echo "please wait....."
cp -f /sdcard/WHATSAPP-FILES/msgstore.db /data/data/com.whatsapp/databases
echo "Successfully restored"
Whatsapp
fi
if [ $opt -eq 12 ];then
echo "please wait......"
rm -Rf $HOME/Whatsapp-Settings
cd $HOME
git clone https://github.com/rooted-cyber/Whatsapp-Settings
cd Whatsapp-Settings
bash set.sh
fi
if [ $opt -eq 13 ];then
clear
echo -e "\033[1;92m Backuping ........."
sleep 2
cp -Rf /data/data/com.whatsapp/files/Stickers /sdcard/WHATSAPP-FILES/BACKUP_STICKER
cp -f /data/data/com.whatsapp/databases/stickers.db /sdcard/WHATSAPP-FILES/BACKUP_STICKER
clear
echo -e "\033[1;93m Successfully Backuped"
Whatsapp
fi
if [ $opt -eq 14 ];then
clear
echo -e "\033[1;92m Restoring ........"
sleep 2
rm -f /data/data/com.whatsapp/databases/stickers.db
rm -Rf /data/data/com.whatsapp/files/Stickers
cp -f /sdcard/WHATSAPP-FILES/BACKUP_STICKER/stickers.db /data/data/com.whatsapp/databases
cp -Rf /sdcard/WHATSAPP-FILES/BACKUP_STICKER/Stickers /data/data/com.whatsapp/files
chmod 777 -R /data/data/com.whatsapp/files/Stickers
chmod 777 /data/data/com.whatsapp/databses/stickers.db
clear
echo -e "\033[96m Successfull Restored Stickers"
Whatsapp
fi
if [ $opt -eq 15 ];then
exit 0
else
echo "invalid"
exit 0
fi
