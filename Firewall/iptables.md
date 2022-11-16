# IP tables

iptables -L -v

iptables -A <chain> -i <interface> -p <protocol (tcp/udp) > -s <source> --dport <port no>  -j <target>

iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -P INPUT DROP

iptables -A INPUT -s 10.10.10.1 -j DROP
iptables -A INPUT -m iprange --src-range 10.10.10.1-10.10.10.255 -j DROP