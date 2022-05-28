FROM alpine:3.16.0

USER 0

RUN adduser -D -u 1001 alpine

RUN apk add --no-cache openjdk17 curl diffutils

USER 1001
