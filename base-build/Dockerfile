FROM eclipse-temurin:17-jdk-alpine

RUN addgroup -S group_hocs && adduser -S -u 10000 user_hocs -G group_hocs -h /app

RUN apk add --no-cache msttcorefonts-installer fontconfig libreoffice && update-ms-fonts

WORKDIR /app
