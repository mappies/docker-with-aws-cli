FROM docker:stable
LABEL maintainer "Nithiwat Kampanya"

RUN apk --no-cache add zip groff less python py-pip jq python-dev libc-dev gcc libffi-dev openssl-dev make && \
        pip --no-cache-dir install docker-compose awscli aws-sam-cli && \
        rm -rf /var/cache/apk/*

# Fix "WARNING: Connection pool is full, discarding connection: " red-herring
RUN sed -i 's/DEFAULT_POOLSIZE = 10/DEFAULT_POOLSIZE = 300/' /usr/lib/python2.7/site-packages/requests/adapters.py
