FROM docker:19
LABEL maintainer "Nithiwat Kampanya & Lee Doughty"

RUN apk --no-cache add zip groff less python3 py3-pip jq python3-dev libc-dev gcc libffi-dev openssl-dev make rust cargo && \
        pip3 --no-cache-dir install docker-compose awscli aws-sam-cli && \
        rm -rf /var/cache/apk/*

# Fix "WARNING: Connection pool is full, discarding connection: " red-herring
RUN sed -i 's/DEFAULT_POOLSIZE = 10/DEFAULT_POOLSIZE = 300/' /usr/lib/python3.8/site-packages/requests/adapters.py
