FROM docker:latest
LABEL maintainer "Nithiwat Kampanya"

RUN apk --no-cache add zip groff less python py-pip jq python-dev libc-dev gcc && \
        pip --no-cache-dir install docker-compose awscli aws-sam-cli && \
        rm -rf /var/cache/apk/*
