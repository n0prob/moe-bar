FROM nginx:alpine

COPY web/html /usr/share/nginx/html
COPY web/css /usr/share/nginx/html/css
COPY web/js /usr/share/nginx/html/js
COPY web/images /usr/share/nginx/html/images

