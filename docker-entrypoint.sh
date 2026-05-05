#!/bin/sh
envsubst '${APP_ENV}' < /usr/share/nginx/html/index.template.html > /usr/share/nginx/html/index.html
nginx -g 'daemon off;'
