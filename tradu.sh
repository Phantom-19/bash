#!/bin/bash
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
  echo -e "[+] Resultat -> $faxel"
}
echo "${vert}"
cat << "EOF"
 _  _ ____   /!_.-_|\   ____ ____ _  _ ____ _    
 |\/| |__/   `-/_'--'   |___ |__|  \/  |___ |                              
 |  | |  \   (_(o)\\\)  |    |  | _/\_ |___ |___                           
            (||\\\\;_,                             
             /  _-".----.                       
           ./_-"  /o,--.o\ 
          /      |o (  ) o|  AUTEUR : FAXEL                        
         !__,--.__\o `-'o/   GOOGLE Traduction ==                      
          |_-__--__`----'                          
         __,/\_|\/\,                               
        (   `/_'`X_;         
         `.____)____)
EOF
echo -n "Traducteur -> "; read TRA
echo -n "De  : "; read mael
echo -n "A   : "; read noel
Traducteur
