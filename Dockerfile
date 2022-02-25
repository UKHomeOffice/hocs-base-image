FROM alpine:3.15.0

USER root

RUN apk upgrade --no-cache && apk add --no-cache openjdk17

RUN addgroup -S group_hocs && adduser -S -u 10000 user_hocs -G group_hocs -h /app

USER 10000

WORKDIR /app
