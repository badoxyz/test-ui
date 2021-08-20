#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
clear
figlet PANEL L2TP | lolcat -d 5
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e "         \e[1;31m\e[1;31m[\e[mL2TP Menu\e[1;31m]\e[m" 
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e " 1\e[1;33m)\e[m  Creating L2TP Account"
echo -e " 2\e[1;33m)\e[m  Deleting L2TP Account"
echo -e " 3\e[1;33m)\e[m  Renew L2TP Account"
echo -e " 4\e[1;33m)\e[m  Trial L2TP Account"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e ""
read -p "     Please Input Number  [1-4 or x] :  "  l2tp
echo -e ""
case "$l2tp" in
1)
add-l2tp
;;
2)
del-l2tp
;;
3)
renew-l2tp
;;
4)
trial-l2tp
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac


