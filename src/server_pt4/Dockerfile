FROM nginx

WORKDIR /home/server/

COPY ./server.c .
COPY ./nginx/nginx.conf /etc/nginx/ 

RUN apt-get update; \
    apt-get install -y \
    gcc \
    libfcgi-dev \
    spawn-fcgi ; \
    gcc server.c -lfcgi -o server

ENTRYPOINT service nginx start && spawn-fcgi -p 8080 -n server