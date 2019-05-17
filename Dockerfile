FROM jlesage/baseimage-gui:alpine-3.9

MAINTAINER JuezFenix

VOLUME /output 

RUN apk update && apk add git && apk add --update nodejs nodejs-npm 
RUN git clone https://github.com/Meshiest/autocr.git /autocr && cd /autocr && npm install && npm link \
    && npm install $(pwd) && autocr init
COPY autocr.sh /autocr.sh

ENTRYPOINT ["/autocr.sh"]
