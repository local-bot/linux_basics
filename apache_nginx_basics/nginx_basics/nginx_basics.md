
# nginx_basics

test before reloading nginx
<pre>
nginx -t
</pre>

create host
<pre>
ln -s /etc/nginx/sites-available/my_nginx.conf /etc/nginx/sites-enabled/
</pre>

set reverse proxy
<pre>
server {
  location / {
    proxy_pass http://localhost:8080;
  }

  location ~ \.(gif|jpg|png) $ {
    root /data/images;
  }
}
</pre>


# setting alias

<pre>
server {
    server_name example.com;
    listen 80;
  
    index index.html;
    root /var/www/html;
  
    location / {
        try_files $uri $uri/ =404;
    }
  
    location ^~ /images {
        alias /var/www/uploads/images;
        try_files $uri $uri/ =404;
    }
}
</pre>

# using regexp

<pre>
location ~* (.*/myapp)/(.+\.php)$ {
    #...
}
</pre>


# security tips
https://book.hacktricks.xyz/network-services-pentesting/pentesting-web/nginx

location must allways end with /
<pre>
server {
    location / {
        root /data/www;
    }

    location /images/ {
        root /data;
    }
}
</pre>

location should never look like this:
<pre>
server {
    location /images {
        root /data/images;
    }
}
</pre>
