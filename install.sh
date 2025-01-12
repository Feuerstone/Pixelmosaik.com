#!/bin/bash
DOMAIN="youre/Domain"
EMAIL="youre/E-mail"

echo DOMAIN=${DOMAIN} >> .env
echo EMAIL=${EMAIL} >> .env
 
# Phase 1
docker compose -f ./docker-compose-initiate.yaml up -d nginx
docker compose -f ./docker-compose-initiate.yaml up certbot
docker compose -f ./docker-compose-initiate.yaml down
 
# some configurations for let's encrypt
curl -L --create-dirs -o etc/letsencrypt/options-ssl-nginx.conf https://raw.githubusercontent.com/certbo>
openssl dhparam -out etc/letsencrypt/ssl-dhparams.pem 2048
 
# Phase 2
crontab ./etc/crontab
docker compose -f ./docker-compose.yaml up -d
