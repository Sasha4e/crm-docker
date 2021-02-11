#!/usr/bin/env sh
echo "################################## Run nginx"

envsubst '${DOMAIN} ${PORT}' < /etc/nginx/conf.d/crm.conf.example > /etc/nginx/conf.d/crm.conf
nginx -g "daemon off;"
