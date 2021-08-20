#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
clear
figlet PANEL SS | lolcat -d 5
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e "           \e[1;31m\e[1;31m[\e[mShadowSocks Menu\e[1;31m]\e[m" 
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e " 1\e[1;33m)\e[m  Create Shadowsocks Account"
echo -e " 2\e[1;33m)\e[m  Delete Shadowsocks Account"
echo -e " 3\e[1;33m)\e[m  Renew Shadowsocks Account"
echo -e " 4\e[1;33m)\e[m  Check User Login Shadowsocks"
echo -e " 5\e[1;33m)\e[m  Trial Shadowsocks Account"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e ""
read -p "     Please Input Number  [1-5 or x] :  "  sssss
echo -e ""
case $sssss in
1)
add-ss
;;
2)
del-ss
;;
3)
renew-ss
;;
4)
cek-ss
;;
5)
trial-ss
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
