FROM node:alpine

MAINTAINER JuezFenix

VOLUME /output 

RUN apk update && apk add git && git clone https://github.com/Meshiest/autocr.git /autocr && cd /autocr && npm install && npm link \
    && npm install $(pwd) && autocr init
COPY autocr.sh /autocr.sh
RUN chmod +x /autocr.sh

ENTRYPOINT ["/autocr.sh"]
