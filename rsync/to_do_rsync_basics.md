
https://www.hostinger.com/tutorials/how-to-use-rsync

mkdir original
mkdir duplicate

touch original/file{1..3}

ls original
<pre>
file1
file2
file3
</pre>

rsync original/* duplicate/

# Rsync Most Common Commands
<pre>
-a, --archive (Symbolic Links are synked too)
-v, --verbose
-h, --human-readable format
-z, --compress
</pre>
# Additional attributes for ssh
<pre>
-e 'ssh -p 2234'
-e 'ssh -o "ProxyCommand nohup ssh firewall nc -w1 %h %p"'
</pre>
