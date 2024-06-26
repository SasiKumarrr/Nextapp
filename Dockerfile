FROM nginx
COPY .next /var/www/project
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
