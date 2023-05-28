# IP tables

iptables -A INPUT -s 192.168.1.0/24 -d 192.168.1.254 -p tcp --dport 443 -j ACCEPT
<pre>
# Action
ACCEPT - Allows package
DROP - Drops Package with no response to sender 
REJECT	- Drops Packages and sends response to sender

# Chain
INPUT chain – Incoming to firewall
OUTPUT chain – Outgoing from firewall
FORWARD chain – For packets routed through the local server
</pre>

Interface (IP, or interface)
<pre>
-i 10.10.10.0/16
-i eth0
</pre>

Protocol
<pre>
-p tcp
-p udp
-p ICMP
</pre>

source (IP or interface)
<pre>
-s 10.10.10.0/16
-s eth0
</pre>

destination (IP or interface)
<pre>
-d 192.168.1.254
-d eth0
-d wan
</pre>

source and destination port
<pre>
-sport 80
-dport 80
</pre>

# Useful commands

show all rules
<pre>
iptables -L -v
iptables -L --line-numbers
</pre>

delete Input rule number 2
<pre>
sudo iptables -D INPUT 2
</pre>

delete all rules
<pre>
iptables -F
</pre>

add new rule at postion #1 
<pre>
sudo iptables -I INPUT 1 -i lo -j ACCEPT
</pre>

Allow all outgoing traffic
<pre>
iptables -A OUTPUT -j ACCEPT
</pre>

reject policy to block
<pre>
iptables -P INPUT DROP
</pre>


# save and restore
<pre>
iptables-save > /etc/iptables.up.rules
iptables-restore < /etc/iptables.up.rules
</pre>