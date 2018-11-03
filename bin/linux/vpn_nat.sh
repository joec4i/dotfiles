 #!/bin/bash

VPN_CIDR=192.168.199.0/24
LAN_CIDR=10.0.0.0/24
IFACE_OUT=eth0
IFACE_VPN=tun0

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -F
iptables -t nat -F
 # Allow traffic initiated from VPN to access local network
iptables -I FORWARD -i $IFACE_VPN -o $IFACE_OUT \
     -s $VPN_CIDR -d $LAN_CIDR -m conntrack --ctstate NEW -j ACCEPT

# Allow established traffic to pass back and forth
iptables -I FORWARD -m conntrack --ctstate RELATED,ESTABLISHED \
     -j ACCEPT

iptables -t nat -I POSTROUTING -o $IFACE_OUT -s $VPN_CIDR  -j MASQUERADE
