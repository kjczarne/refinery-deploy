FROM node:12.18.4-alpine3.12
# COPY ./refinery-api /var/server
# WORKDIR /var/server
RUN apk add --no-cache --update python3 \
    && apk add --no-cache --update make \
    && apk add --no-cache --update gcc \
    && apk add --no-cache --update g++ \
    && apk add --no-cache --update libc-dev

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
WORKDIR /home/node
USER node
RUN npm i -g node-gyp && npm i -g refinery-api
WORKDIR /home/node/.npm-global/lib/node_modules/refinery-api
EXPOSE 42069
CMD ["npm", "run", "serve"]

#FIXME: missing npm bin absolute path