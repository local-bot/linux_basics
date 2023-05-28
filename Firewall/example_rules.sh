# Example Rules

#  Allow all loopback (lo0) traffic and drop all traffic to 127/8 that doesn't use lo0
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -d 127.0.0.0/8 -j REJECT

# enable to establish connections
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# SSH
iptables -A INPUT -s 192.168.1.0/24 -d 192.168.1.254 -p tcp --dport 22 -j ACCEPT

# http and https
iptables -A INPUT -s 192.168.1.0/24 -d 192.168.1.254 -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -s 192.168.1.0/24 -d 192.168.1.254 -p tcp --dport 443 -j ACCEPT

# DNS
ip6tables -A INPUT -p tcp --destination-port 53 -j ACCEPT
ip6tables -A INPUT -p udp --destination-port 53 -j ACCEPT

iptables -A INPUT -p tcp -s 192.168.1.254 --sport 53 -m state --state ESTABLISHED -j ACCEPT
iptables -A INPUT -p udp -s 192.168.1.254 --sport 53 -m state --state ESTABLISHED -j ACCEPT


# FOR freeradius
iptables -A OUTPUT -s 192.168.1.254 -d 192.168.1.1 -p udp --dport 1812 -j ACCEPT
iptables -A OUTPUT -s 192.168.1.254 -d 192.168.1.1 -p udp --dport 1813 -j ACCEPT
