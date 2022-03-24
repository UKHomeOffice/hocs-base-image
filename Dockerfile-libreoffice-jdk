FROM alpine:3.15.1

USER root

RUN apk upgrade --no-cache && apk add --no-cache openjdk17 curl msttcorefonts-installer fontconfig libreoffice
RUN update-ms-fonts

RUN adduser -D -u 1001 alpine

USER 1001
