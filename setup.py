  #!/usr/bin/python2
# -*- coding: utf-8 -*-
################################# Credits ##########################################################
# Le crédit pour ce code va à 🄼🅁 🄵🄰🅇🄴🄻
# Si vous voulez prendre Le credit pour ce code Voyez Faster Axel.
####################################################################################################
import os,platform
####################################################################################################        
# -Effacer le systeme en question-#
def _cls():
    if os.name == 'nt':
         os.system('cls')
    else:
         os.system('clear')         
####################################################################################################
# -Importation des modules-#
try:    
    import os, time, sys
    print("\n\033[38;5;245m Installation des paquets")
    _cls()
    os.system("apt-get update")
    os.system("apt-get install curl -y")
    os.system("apt-get install python -y")
    os.system("apt-get install nano -y")
    os.system("apt-get install toilet -y")
    os.system("apt-get install ruby -y")
    os.system("gem install lolcat")
except :
    _cls()
    setup()
####################################################################################################
def setup():
  _cls()
  print("\n\033[1;92m Suppression du bash.bashrc d'origine")
  time.sleep(4)
  os.system("rm /data/data/com.termux/files/usr/etc/bash.bashrc")
  time.sleep(3)
  print("\n\033[1;92m Configuration du nouveau du bash.bashrc")
  os.system("curl -LO https://raw.githubusercontent.com/phantom-19/bash/master/bash.bashrc")
  os.system("mv bash.bashrc /data/data/com.termux/files/usr/etc")
  time.sleep(3)
  os.system("toilet -f term -F border Configuration reussie. Terminer.. Mr Faxel | lolcat")
###################################################################################################
if __name__ == "__main__":
      setup()
