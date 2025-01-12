# Pixelmosaik.com
Docker Container running on 2 Hosts: 1x Nginx ReverseProxy with Letsencrypt Certificat + 1x Wordpress/mariaDB backend all automated 

to youse the setup for you're website you need to add 

edit the install.sh with your e-mail and Domain name

edit the etc/nginx/templates/default.conf.template 
    location ^~ / {
        proxy_pass http://youre_ip_reverseproxy:80; with youre info

edit the file path's as needed
sometimes we are using realtiv paths ./ that means the start point is the directory you are right now 
these can be seen here ./docker-compose-initiate.yaml if it is just a / it means it is a absoulut path.

File structure reverse Proxy:

├── etc
  │   │
  │   └── nginx
  │       ├── templates
  │        │   └── default.conf.template
  │       └── templates-initiate
  │           └── default.conf.template
├── docker-compose-initiate.yaml
├── docker-compose.yaml
├── cron.sh
└── install.sh

