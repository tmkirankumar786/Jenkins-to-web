FROM nginx:alpine

COPY index.html /var/www/html

EXPOSE 7070

RUN sed -i 's/listen 80;/listen 7070;/' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
