FROM nginx:alpine

VOLUME /var/www
VOLUME /etc/nginx
VOLUME /var/log/nginx/log

# You can override these in command line, docker-compose, k8s config or wherever
ENV FPM_SERVER fpm:9000
ENV DOMAIN example.com
ENV PORT 80

COPY config /nginx-config
COPY nginx-envsubst.sh .
COPY entrypoint.sh .

CMD ["./entrypoint.sh"]
