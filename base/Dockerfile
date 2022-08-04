FROM eclipse-temurin:18-jre-jammy as builder

RUN groupadd -r group_hocs && \
    useradd -r -u 10000 -g group_hocs user_hocs -d /app && \
    mkdir -p /app && \
    chown -R user_hocs:group_hocs /app

RUN apt-get update && \
    apt-get upgrade -y

FROM builder as base

RUN apt-get clean

FROM builder as libreoffice

RUN apt-get install -y software-properties-common && \
    add-apt-repository ppa:libreoffice/ppa && \
    apt-get install libreoffice --no-install-recommends  --no-install-suggests -y && \
    apt-get clean
