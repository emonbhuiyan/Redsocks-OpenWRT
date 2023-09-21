#!/bin/bash

# Update package
opkg update

#install packages
opkg install iptables iptables-mod-nat-extra redsocks

#Then run this line
service redsocks stop && mv /etc/redsocks.conf /etc/redsocks.conf.bkp && cd /etc && wget https://github.com/emonbhuiyan/Redsocks-OpenWRT/raw/main/redsocks.conf && mv /etc/init.d/redsocks /etc/init.d/redsocks.bkp && cd /etc/init.d && wget https://github.com/emonbhuiyan/Redsocks-OpenWRT/raw/main/redsocks && chmod +x /etc/init.d/redsocks

echo -e "Thanks for installing. Follow me for more updates. https://fb.me/emoncontact"
