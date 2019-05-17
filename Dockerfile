FROM node:11.15.0-alpine

MAINTAINER JuezFenix

# package version
ARG NODE_VER="11.15.0"

VOLUME /output 

RUN npm i -g git+https://github.com/Meshiest/autocr && autocr init
COPY autocr.sh /autocr.sh

ENTRYPOINT ["/autocr.sh"]
