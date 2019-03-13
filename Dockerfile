FROM nginx:1.15.8-alpine

ARG ui5_version="1.63.0"
ARG ui5_filename="openui5-sdk-${ui5_version}.zip"
ARG ui5_url="https://openui5.hana.ondemand.com/downloads/${ui5_filename}"

RUN apk add --no-cache --virtual .sdk wget unzip

RUN mkdir -p /var/www

RUN wget ${ui5_url} --no-check-certificate -P /var/www

RUN unzip -o /var/www/${ui5_filename} -d /var/www

RUN apk del .sdk

RUN rm /var/www/${ui5_filename}

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./server.* /etc/nginx/

EXPOSE 80 443
