FROM alpine:3.15.1

USER root

RUN addgroup -S group_hocs && adduser -S -u 10000 user_hocs -G group_hocs -h /app

RUN apk upgrade --no-cache && apk add --no-cache openjdk17-jre

USER 10000

WORKDIR /app
