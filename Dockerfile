FROM docker:stable
LABEL maintainer "Nithiwat Kampanya"

RUN apk --no-cache add zip groff less python py-pip jq python-dev libc-dev gcc libffi-dev openssl-dev make && \
        pip --no-cache-dir install docker-compose awscli aws-sam-cli && \
        rm -rf /var/cache/apk/*
