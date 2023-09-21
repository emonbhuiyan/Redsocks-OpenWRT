# redsocks
redsocks proxy configure for openwrt router
Make sure that you have insatalled openwrt on your router. Then run command's as following:

# Update packages
`opkg update`

# Install these 3 packages
`opkg install iptables iptables-mod-nat-extra redsocks`

#  Then run this line
`service redsocks stop && mv /etc/redsocks.conf /etc/redsocks.conf.bkp && cd /etc && wget -O redsocks.conf https://redsocks.000webhostapp.com/redsocks/redsocks.conf && mv /etc/init.d/redsocks /etc/init.d/redsocks.bkp && cd /etc/init.d && wget -O redsocks https://redsocks.000webhostapp.com/redsocks/redsocks`

# To start proxy bypass
`service redsocks start`

# To stop proxy bypass
`service redsocks stop`

# To restart proxy bypass
`service redsocks restart`

# To enable auto boot start proxy
`service redsocks enable`

# To disable auto boot start proxy
`service redsocks disable`

# To update proxy IP, username, password
`vi /etc/bypass.conf`

After update press "ESC" key then ":wq" to save or ":q!" to discard changes

Thanks for using this method.
