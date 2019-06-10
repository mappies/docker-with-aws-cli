FROM docker:stable
LABEL maintainer "Nithiwat Kampanya"

ENV DOCKER_COMPOSE_VERSION=1.23.2

RUN apk --no-cache add bash curl libffi-dev groff less python py-pip jq python-dev libc-dev gcc make libressl-dev && \
        python -m ensurepip && \
        pip --no-cache-dir install awscli aws-sam-cli docker-compose~=${DOCKER_COMPOSE_VERSION} && \
        rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
