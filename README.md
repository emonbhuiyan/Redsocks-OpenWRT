# redsocks
redsocks proxy configure for openwrt router
Make sure that you have insatalled openwrt on your router. Then run command's as following:

## Step 1: Update packages
```opkg update```

## Step 2: Install these 3 packages
```opkg install iptables iptables-mod-nat-extra redsocks```

## Step 3: Then run this line
```
service redsocks stop && mv /etc/redsocks.conf /etc/redsocks.conf.bkp && cd /etc && wget -O redsocks.conf https://redsocks.000webhostapp.com/redsocks/redsocks.conf && mv /etc/init.d/redsocks /etc/init.d/redsocks.bkp && cd /etc/init.d && wget -O redsocks https://redsocks.000webhostapp.com/redsocks/redsocks && chmod +x /etc/init.d/redsocks
```


# To start proxy bypass
```service redsocks start```

# To stop proxy bypass
```service redsocks stop```

# To restart proxy bypass
```service redsocks restart```

# To enable auto boot start proxy
```service redsocks enable```

# To disable auto boot start proxy
```service redsocks disable```

# To update proxy IP, username, password
```vi /etc/redsocks.conf```

After update press `ESC` key then `:wq` to save or `:q!` to discard changes

Thanks for using this method.
