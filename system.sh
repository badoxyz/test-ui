#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
clear
figlet PANEL SYSTEM | lolcat -d 5
echo -e ""
echo -e "\e[1;32m═════════════════════════════════════════\e" | lolcat
echo -e "          \e[1;31m\e[1;31m[\e[mSystem Menu\e[1;31m]\e[m" 
echo -e "\e[1;32m═════════════════════════════════════════\e" | lolcat
echo -e   "   1\e[1;33m)\e[m  Add Subdomain Host For VPS"
echo -e   "   2\e[1;33m)\e[m  Renew Certificate V2RAY"
echo -e   "   3\e[1;33m)\e[m  Change Port All Account"
echo -e   "   4\e[1;33m)\e[m  Autobackup Data VPS"
echo -e   "   5\e[1;33m)\e[m  Backup Data VPS"
echo -e   "   6\e[1;33m)\e[m  Restore Data VPS"
echo -e   "   7\e[1;33m)\e[m  Webmin Menu"
echo -e   "   8\e[1;33m)\e[m  Limit Bandwith Speed Server"
echo -e   "   9\e[1;33m)\e[m  Check Usage of VPS Ram" 
echo -e   "   10\e[1;33m)\e[m  Reboot VPS"
echo -e   "   11\e[1;33m)\e[m  Speedtest VPS"
echo -e   "   12\e[1;33m)\e[m  Information Display System" 
echo -e   "   13\e[1;33m)\e[m  Info Script Auto Install"
echo -e   "   14\e[1;33m)\e[m  Install BBR"
#echo -e   "   24\e[1;33m)\e[m  Add ID Cloudflare"
#echo -e   "   25\e[1;33m)\e[m  Cloudflare Add-Ons"
#echo -e   "   26\e[1;33m)\e[m  Pointing BUG"
echo -e   "   15\e[1;33m)\e[m  Clear log"
echo -e   "   16\e[1;33m)\e[m  Auto Reboot"
#echo -e   "   29\e[1;33m)\e[m  Panel-bot"
echo -e   "   17\e[1;33m)\e[m  Pointing VPS"
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e" | lolcat
echo -e ""
read -p "     Please Input Number  [1-17 or x] :  "  system
echo -e ""
case $system in
1)
add-host
;;
2)
certv2ray
;;
3)
change-port
;;
4)
autobackup
;;
5)
backup
;;
6)
restore
;;
7)
wbmn
;;
8)
limit-speed
;;
9)
ram
;;
10)
reboot
;;
11)
speedtest
;;
12)
info
;;
13)
about
;;
14)
bbr
;;
15)
clear-log
;;
16)
autoreboot
;;
17)
point
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
