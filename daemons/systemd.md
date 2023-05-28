
# Systemd

/etc/systemd/system/flask.service
<pre>
[Unit]
Description=flask-bot
After=multi-user.target

[Service]
User=flask
Group=flask
Type=idle
ExecStart=/var/www/flask/virtual_flask/bin/python3 /var/www/flask/my_app.py
Restart=on-failure

[Install]
WantedBy=multi-user.target
</pre>

# Wanted by in detail
## init 1 
runlevel1.target
Alias: rescue.target
<pre>
Boot into emergency rescue mode (single user mode).
</pre>

## init 2
runlevel2.target \
Alias: multi-user.target 
<pre>
Multi-user but without network interfaces
</pre>

## init 3
runlevel3.target \
Alias: multi-user.target 
<pre>
All services running, but command-line interface (CLI) only.
</pre>

## init 4
runlevel4.target \
Alias: multi-user.target 
<pre>
For special purposes text mode. 
</pre>

## init 5 
runlevel5.target \
Alias: graphical.target 
<pre>
Multi-user.target with a GUI
</pre>

## default target
default.target
<pre>
Systemd always uses the default.target to start the system.    	                
This target is always aliased with a symbolic link to either multi-user.target or graphical.target. 
The default.target should never be aliased to halt.target, poweroff.target, or reboot.target.
</pre>
