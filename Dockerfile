FROM nginx:alpine
COPY /default.conf /etc/nginx/conf/default.conf
COPY /dist/crudtuto-Front usr/share/nginx/html