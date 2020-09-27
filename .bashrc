HISTSIZE=5000
########## ~/.profile doit exister et être exécutable avec :
#! /bin/bash
#if [ -n "$BASH_VERSION" ]; then
#    if [ -f "$HOME/.bashrc" ]; then
#        . "$HOME/.bashrc"
#    fi
#fi
#########
# MES RAJOUTS (A copier coller dans /root/.bash pour en bénéficier en root également)
#### ALIAS COMMANDE SYS ####
alias ls="ls --color"
alias grep="grep --color"
alias ll="ls -la"
alias lh="ls -lh"
alias la="ls -a"
alias igrep="grep -i"
##### ALIAS NESS ROOT ####
alias log="sudo tailf /var/log/messages | ccze -A"
alias maj="sudo cl-update -o"
alias maj2="FEATURES=\"-getbinpkg\" sudo cl-update -o"
alias swap="sudo swapoff -a && sudo swapon -a"
alias majsrv="cl-console --host oxygen.linuxtricks.fr --port 8888 --method update"
##### ALIAS SYSTEMES ####
alias gg="ping google.fr"
alias lspci="/usr/sbin/lspci"
alias cpu++="sudo cpupower frequency-set -u 3.2GHz"
alias cpu--="sudo cpupower frequency-set -u 1.2GHz"
alias cpu+-="sudo cpupower frequency-set -u 2.3GHz" 
##### ALIAS PERSOS ######
alias flic="nmap -v -Pn -A"
alias lst="ls -c1X"
alias ledon="sudo chmod a+rwx /sys/class/leds/asus\:\:kbd_backlight/brightness && echo 3 > /sys/class/leds/asus\:\:kbd_backlight/brightness"
alias ledoff="sudo chmod a+rwx /sys/class/leds/asus\:\:kbd_backlight/brightness && echo 0 > /sys/class/leds/asus\:\:kbd_backlight/brightness"
alias youtube2mp3="youtube-dl -t -x --audio-format mp3 --audio-quality 0"
alias youtube2mp4="youtube-dl -t -f mp4"
alias aix="export TERM=vt100; ssh aix"
alias lpar1="export TERM=vt100; ssh aix1"
alias shutdown="sudo shutdown"
alias FUN="mplayer -nocache http://streaming.radio.funradio.fr/fun-1-48-192"
alias FUNenr="mplayer -ao pcm:file=radio.wav -nocache http://streaming.radio.funradio.fr/fun-1-48-192"
alias CKOI="mplayer http://158.69.4.238:8000/cfel.mp3"
alias RYTHMEFM="mplayer http://142.4.207.11:8000/cfgl.mp3"
alias GARDANNE="mplayer http://radiart.eu:10097/stream"
alias GARDANNEenr="mplayer -ao pcm:file=radio.wav -nocache http://radiart.eu:10097/stream"
alias EURODANCE="mplayer http://91.121.59.45:8394/stream"
alias EURODANCEenr="mplayer -ao pcm:file=radio.wav -nocache http://91.121.59.45:8394/stream"
alias MFM="mplayer http://mfm.ice.infomaniak.ch/mfm-128.mp3"
alias musique="cd /media/DATA/Documents-Perso/Album-Musique"
alias pp="mplayer"
alias ppp="mplayer -shuffle"
alias testoptimus="primusrun glxspheres" 
alias data="cd /media/DATA"
alias pileface="shuf -i 0-1 -n 1"
alias screencast="ffmpeg -threads 0 -async 30 -f x11grab -s 1920x1080 -r 30 -i :0 -vcodec libx264 -preset superfast -crf 16 -f mp4 out.mp4"
alias screencastaudio="ffmpeg -threads 0 -async 30 -f alsa -i pulse -f x11grab -s 1920x1080 -r 30 -i :0 -vcodec libx264 -preset superfast -crf 16 -acodec libmp3lame -f mp4 out.mp4"
alias arc-en-ciel='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done'
alias tunnel1="ssh -L 5900:localhost:9999 o1"
alias tunnel="ssh -L 5900:localhost:9999 o"
alias assistance="x11vnc -many -rfbauth ~/.vnc_passwd -xkb"
alias mic-on="pactl load-module module-loopback"
alias mic-off="pactl unload-module module-loopback"
alias divia="/home/adrien/.adrien/divia-totem-parser/divia-totem-parser.pl -l=89 -a=666 ; /home/adrien/.adrien/divia-totem-parser/divia-totem-parser.pl -l=185 -a=1498"
alias genmanifest="DISTDIR=\"/tmp/adrien-overlay\" ebuild *.ebuild manifest"
alias webcam1="mplayer -tv driver=v4l2:gain=1:width=640:height=480:device=/dev/video1:fps=10:outfmt=rgb16 tv://"
##### FONCTIONS #####
ex()
{
  if [ -f $1 ];then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' ne peut etre extrait par ex()" ;;
    esac
  else
    echo "'$1' fichier invalide"
  fi
}
# Random password generator (8 caractères par défaut)
genpasswd(){
date +%s | sha256sum | base64 | head -c$1 ;echo
}
###### PROMPT ######
if [ "$UID" -ge 500 ] ; then 
        PS1="\# \[\e[0;36m\][\t]\[\e[0;m\] \[\e[0;32m\]\u@\h\[\e[0;m\]: \[\e[1;35m\]\w\[\e[0;m\] \[\e[1;32m\] \\$\[\e[0;m\] " 
fi
if [ "$UID" -eq 0 ] ; then
        PS1="\# \[\e[0;36m\][\t]\[\e[0;m\] \[\e[0;31m\]\u@\h\[\e[0;m\]: \[\e[1;35m\]\w\[\e[0;m\] \[\e[1;31m\] \\$\[\e[0;m\] "
fi
 
