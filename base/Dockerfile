FROM eclipse-temurin:17-jre-alpine

RUN addgroup -S group_hocs && adduser -S -u 10000 user_hocs -G group_hocs -h /app

USER 10000

WORKDIR /app
