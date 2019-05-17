FROM node:11.15.0-alpine

MAINTAINER JuezFenix

# package version
ARG NODE_VER="11.15.0"

VOLUME /output 

RUN apk update && apk add git && git clone https://github.com/Meshiest/autocr-git /autocr && cd /autocr && npm install && autocr init
COPY autocr.sh /autocr.sh

ENTRYPOINT ["/autocr.sh"]
