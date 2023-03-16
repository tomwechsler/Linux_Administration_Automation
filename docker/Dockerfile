FROM ubuntu
RUN apt update && apt install -y nginx
EXPOSE 80/tcp
ADD index.html /var/www/html
CMD ["nginx", "-g", "daemon off;"]