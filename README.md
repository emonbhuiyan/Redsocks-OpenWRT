# Redsocks
Redsocks is a proxy tunneling extension. However, I found a very rare tutorial about how to configure Redsocks on an OpenWRT router. With this tutorial, we can use it on our OpenWRT router easily. It will be helpful for BDIX bypass users of Bangladesh who are using the socks5 proxy. To install and configure Redsocks, ensure you have installed OpenWrt on your router. Then run commands as follows:

## Step 1: Update your package manager
```
opkg update
```

## Step 2: Install these 3 packages
```
opkg install iptables iptables-mod-nat-extra redsocks
```

## Step 3: Then run this line
```
service redsocks stop && mv /etc/redsocks.conf /etc/redsocks.conf.bkp && cd /etc && wget -O redsocks.conf https://redsocks.000webhostapp.com/redsocks/redsocks.conf && mv /etc/init.d/redsocks /etc/init.d/redsocks.bkp && cd /etc/init.d && wget -O redsocks https://redsocks.000webhostapp.com/redsocks/redsocks && chmod +x /etc/init.d/redsocks
```


### To start proxy bypass
```
service redsocks start
```

### To stop proxy bypass
```
service redsocks stop
```

### To restart proxy bypass
```
service redsocks restart
```

### To enable auto boot-start proxy
```
service redsocks enable
```

### To disable auto boot-start proxy
```
service redsocks disable
```

### To update proxy IP, username, password
```
vi /etc/redsocks.conf
```
After the update press `ESC` key then `:wq` to save or `:q!` to discard changes

Thanks for following my tutorial. Follow me to get more interesting tips and tricks.
