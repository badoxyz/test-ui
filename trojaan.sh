#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
clear
figlet PANEL TROJAN | lolcat -d 5
echo -e ""
echo -e "\e[32m════════════════════════════════════════\e" | lolcat
echo -e "          \e[1;31m\e[1;31m[\e[mTROJAN Menu\e[1;31m]\e[m"
echo -e "\e[32m════════════════════════════════════════\e" | lolcat
echo -e " 1)  Create Trojan Account"
echo -e " 2)  Deleting Trojan Account"
echo -e " 3)  Renew Trojan Account"
echo -e " 4)  Check User Login Trojan"
echo -e " 5)  Trial Trojan Account"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e ""
read -p "     Please Input Number  [1-5 or x] :  "  trojan
echo -e ""
case $trojan in
1)
add-tr
;;
2)
del-tr
;;
3)
renew-tr
;;
4)
cek-tr
;;
5)
trial-tr
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
