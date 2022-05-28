FROM alpine:3.16.0

USER 0

RUN adduser -D -u 1001 alpine


RUN apk upgrade --no-cache && apk add --no-cache openjdk17 curl msttcorefonts-installer fontconfig libreoffice
RUN update-ms-fonts

USER 1001
