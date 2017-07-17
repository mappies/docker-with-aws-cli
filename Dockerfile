FROM docker:latest
LABEL maintainer "Nithiwat Kampanya"

RUN apk --no-cache add groff less python py-pip jq
RUN pip --no-cache-dir install docker-compose
RUN pip --no-cache-dir install awscli
RUN rm -rf /var/cache/apk/*

