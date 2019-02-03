#!/bin/sh

./nginx-envsubst.sh

# Just in case
touch /var/www/nginx.conf.sample

nginx -g "daemon off;"
