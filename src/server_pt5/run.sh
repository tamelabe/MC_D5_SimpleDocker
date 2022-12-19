#!/bin/bash
gcc server.c -lfcgi -o server.o
spawn-fcgi -p 8080 ./server.o
nginx -g "daemon off;"