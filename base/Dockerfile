FROM eclipse-temurin:17-jre-alpine as base

RUN addgroup -S group_hocs && adduser -S -u 10000 user_hocs -G group_hocs -h /app

FROM base as libreoffice

RUN apk add --no-cache msttcorefonts-installer fontconfig libreoffice && update-ms-fonts
