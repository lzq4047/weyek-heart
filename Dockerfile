FROM nginx

# copy files
COPY fonts /usr/share/nginx/html/fonts
COPY index.html /usr/share/nginx/html/index.html

COPY config/nginx/heart.nginx.conf /etc/nginx/nginx.conf