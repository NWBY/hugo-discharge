FROM node:11.6.0-alpine

LABEL maintainer="sam.newby19@icloud.com"

ENV HUGO_VERSION 0.55

RUN set -x && \
    apk add --no-cache wget ca-certificates && \
    update-ca-certificates && \
    cd /tmp && \
    wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -O hugo.tar.gz && \
    tar xzf hugo.tar.gz && \
    mv hugo /usr/bin/hugo && \
    rm -r * && \
    apk del wget

RUN npm install -g @static/discharge
