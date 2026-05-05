FROM nginx:alpine

RUN apk add --no-cache gettext

COPY index.template.html /usr/share/nginx/html/index.template.html
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]