FROM nginx:latest

COPY web /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf

RUN chmod -R 755 /usr/share/nginx/html

