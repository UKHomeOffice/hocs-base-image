FROM alpine:3.15.0

USER root

RUN apk upgrade --no-cache && apk add --no-cache openjdk17-jre

ENV USER user_hocs
ENV USER_ID 10000
ENV GROUP group_hocs

RUN addgroup -S ${GROUP} && \
    adduser -S -u ${USER_ID} ${USER} -G ${GROUP} -h /app && \
    mkdir -p /app && \
    chown -R ${USER}:${GROUP} /app
