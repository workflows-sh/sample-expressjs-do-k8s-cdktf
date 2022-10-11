FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops
USER ops

ADD --chown=ops:9999 . .
RUN npm install

EXPOSE 3000