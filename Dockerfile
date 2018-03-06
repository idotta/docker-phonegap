FROM node:9-alpine

# Phonegap port
EXPOSE 3000

VOLUME ["/data"]
WORKDIR /data

ENV PHONEGAP_VERSION 7.1.1

RUN apk -U update && apk -U add \
    git \
    yarn \
    ca-certificates \
    && npm install -g phonegap@${PHONEGAP_VERSION} \
    && npm install -g xmldom \
    && npm install -g xpath \
    && npm install -g fs-extra \
    && npm install -g lodash \
    && npm install -g iconv-lite \
    && npm install -g xml2js \
    && npm install -g xcode \
    && npm install -g xml-writer \
    && rm -rf /var/cache/apk/*