FROM registry.cto.ai/official_images/node:2.7.4-12.13.1-buster-slim

WORKDIR /ops
USER ops

ADD --chown=ops:9999 . .
RUN npm install

EXPOSE 3000
CMD ["node", "index.js"]
