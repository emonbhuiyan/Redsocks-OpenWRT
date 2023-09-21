# Update package
opkg update

#install packages
opkg install iptables iptables-mod-nat-extra redsocks

#Then run this line
service redsocks stop && mv /etc/redsocks.conf /etc/redsocks.conf.bkp && cp redsocks.conf /etc/redsocks.conf && mv /etc/init.d/redsocks /etc/init.d/redsocks.bkp && cp redsocks /etc/init.d/redsocks && chmod +x /etc/init.d/redsocks


echo -e "${YELLOW}Thanks for installing${ENDCOLOR}"
