#!/bin/sh

ENV_VARS_TO_REPLACE="\
  \$DOMAIN \
  \$PORT
"

for f in $(find /nginx-config/ -type f -regex '.*\.conf'); do
  envsubst "$ENV_VARS_TO_REPLACE" < $f > /etc/nginx/conf.d/$(basename $f);
done
