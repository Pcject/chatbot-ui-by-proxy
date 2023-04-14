#!/bin/sh 
cp /etc/proxychains/proxychains.conf /tmp/proxychains.conf
sed -i "s/socks4[[:space:]]\+127\.0\.0\.1[[:space:]]\+9050/${PROXYCHAINS_PROXY}/g" /tmp/proxychains.conf

proxychains4 -f /tmp/proxychains.conf npm start