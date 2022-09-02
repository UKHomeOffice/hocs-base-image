FROM eclipse-temurin:18-jre-jammy as base

RUN groupadd -r group_hocs && \
    useradd -r -u 10000 -g group_hocs user_hocs -d /app && \
    mkdir -p /app && \
    chown -R user_hocs:group_hocs /app

RUN apt-get update && \
    apt-get upgrade -y &&\
    apt-get clean

FROM base as gh-runner
USER 0

RUN apt-get install -y ca-certificates git sudo jq curl \
    && wget -q https://dl.k8s.io/v1.22.13/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
    && wget -q https://get.helm.sh/helm-v3.9.4-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
    && chmod +x /usr/local/bin/helm /usr/local/bin/kubectl

RUN usermod -aG sudo user_hocs
RUN echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers


user 10000
WORKDIR /app

RUN  wget https://github.com/actions/runner/releases/download/v2.296.0/actions-runner-linux-x64-2.296.0.tar.gz

RUN tar xzf actions-runner-linux-x64-2.296.0.tar.gz

RUN sudo ./bin/installdependencies.sh

COPY --chown=user_hocs:group_hocs runner/entrypoint.sh ./entrypoint.sh
RUN sudo chmod u+x ./entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
