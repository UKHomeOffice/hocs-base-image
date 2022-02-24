FROM alpine:3.15.0

RUN apk upgrade --no-cache && apk add --no-cache openjdk17-jre

USER 1001
