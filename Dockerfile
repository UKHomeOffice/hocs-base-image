FROM eclipse-temurin:19.0.2_7-jre-jammy

RUN groupadd -r group_hocs && \
    useradd -r -u 10000 -g group_hocs user_hocs -d /app && \
    mkdir -p /app && \
    chown -R user_hocs:group_hocs /app

RUN apt-get update && \
    apt-get upgrade -y &&\
    apt-get clean
