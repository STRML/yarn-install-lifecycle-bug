FROM node:boron

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm i -g yarn@0.17.3
COPY .npmrc ./.npmrc
RUN yarn add nodent-runtime
RUN echo "Results of first install:" && ls -al ./node_modules/nodent-runtime/dist
RUN rm ./.npmrc && rm -rf ./node_modules
RUN yarn cache clean && yarn
RUN echo "Results of second install:" && ls -al ./node_modules/nodent-runtime/dist
