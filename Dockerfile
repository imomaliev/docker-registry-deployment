FROM nginx:stable-alpine

VOLUME /var/www/letsencrypt

COPY nginx/certbot.template /etc/nginx/conf.d/certbot.template

CMD envsubst "$$DOMAIN" < /etc/nginx/conf.d/certbot.template > /etc/nginx/conf.d/default.conf && nginx -g "daemon off;"
