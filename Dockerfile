FROM nginx:alpine

COPY web1.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]
