FROM node:boron

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm i -g yarn@0.17.3
COPY .npmrc ~/.npmrc
RUN yarn add nodent-runtime
RUN ls -al ./node_modules/nodent-runtime/dist
