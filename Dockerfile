FROM docker:latest
LABEL maintainer "Nithiwat Kampanya"

RUN apk --no-cache add groff less python py-pip jq python-dev libc-dev gcc
RUN pip --no-cache-dir install docker-compose awscli aws-sam-cli
RUN rm -rf /var/cache/apk/*
