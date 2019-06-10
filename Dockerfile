FROM docker:stable
LABEL maintainer "Nithiwat Kampanya"

RUN apk --no-cache add bash curl zip groff less python jq python-dev libc-dev gcc make libffi-dev && \
        python -m ensurepip && \
        pip --no-cache-dir install awscli aws-sam-cli docker-compose && \
        rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
