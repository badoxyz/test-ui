#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
clear
figlet PANEL SSTP | lolcat -d 5
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e "           \e[1;31m\e[1;31m[\e[mSSTP Menu\e[1;31m]\e[m" 
echo -e "\e[1;32m═══════════════════════════════════════\e" | lolcat
echo -e " 1\e[1;33m)\e[m  Create Account SSTP"
echo -e " 2\e[1;33m)\e[m  Delete SSTP Account"
echo -e " 3\e[1;33m)\e[m  Renew SSTP Account"
echo -e " 4\e[1;33m)\e[m  Check User Login SSTP"
echo -e " 5\e[1;33m)\e[m  Trial Account SSTP"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e ""
read -p "     Please Input Number  [1-5 or x] :  "  sstpp
echo -e ""
case $sstpp in
1)
add-sstp
;;
2)
del-sstp
;;
3)
renew-sstp
;;
4)
cek-sstp
;;
5)
trial-sstp
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
