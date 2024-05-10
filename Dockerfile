FROM nginx:alpine
WORKDIR /web-app
COPY . /var/www/html
COPY nginx-custom.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
