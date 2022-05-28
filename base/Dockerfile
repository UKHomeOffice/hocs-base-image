FROM alpine:3.16.0

USER 0

RUN addgroup -S group_hocs && adduser -S -u 10000 user_hocs -G group_hocs -h /app

RUN apk add --no-cache openjdk17-jre

USER 10000

WORKDIR /app
