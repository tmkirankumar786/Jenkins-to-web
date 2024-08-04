FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

RUN sed -i 's/listen 80;/listen 7072;/'

CMD ["nginx", "-g", "daemon off;"]
