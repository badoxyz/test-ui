#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'

clear 
cat /usr/bin/bannerku | lolcat
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

echo -e "   \e[032;1mCPU Model:\e[0m $cname"
echo -e "   \e[032;1mNumber Of Cores:\e[0m $cores"
echo -e "   \e[032;1mCPU Frequency:\e[0m $freq MHz"
echo -e "   \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
echo -e "   \e[032;1mSystem Uptime:\e[0m $up"
echo -e "   \e[032;1mIsp Name:\e[0m $ISP"
echo -e "   \e[032;1mCity:\e[0m $CITY"
echo -e "   \e[032;1mTime:\e[0m $WKT"
echo -e "   \e[032;1mIPVPS:\e[0m $IPVPS"
echo -e  ""
echo -e   "   \e[1;32m============================================================\e" | lolcat
echo -e   "                             PANEL MENU\e" | lolcat 
echo -e   "   \e[1;32m============================================================\e" | lolcat
echo -e   "   1\e[1;33m)\e[m Panel SSH & OpenVPN"
echo -e   "   2\e[1;33m)\e[m Panel Wireguard "
echo -e   "   3\e[1;33m)\e[m Panel L2TP"
echo -e   "   4\e[1;33m)\e[m Panel PPTP"
echo -e   "   5\e[1;33m)\e[m Panel SSTP"
echo -e   "   6\e[1;33m)\e[m Panel SSR"
echo -e   "   7\e[1;33m)\e[m Panel Shadowsocks"
echo -e   "   8\e[1;33m)\e[m Panel Vmess"
echo -e   "   9\e[1;33m)\e[m Panel VLess"
echo -e   "   10\e[1;33m)\e[m Panel Trojan"
#echo -e   "   9\e[1;33m)\e[m Panel TrojanGO"
echo -e   "   \e[1;32m============================================================\e" | lolcat
echo -e   "   y)   SYSTEM MENU" | lolcat
echo -e   "   x)   EXIT" | lolcat
echo -e   "   \e[1;32m============================================================\e" | lolcat
echo -e   ""
read -p "     Select From Options [0-10 or x] :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
wgr
;;
3)
l2tp
;;
4)
pptp
;;
5)
sstpp
;;
6)
ssssr
;;
7)
sssss
;;
8)
v2raay
;;
9)
vleess
;;
10)
trojaan
;;
0)
system
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac

