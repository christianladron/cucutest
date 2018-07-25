FROM node:9
WORKDIR /usr/src/app
COPY package.json ./
COPY yarn.lock ./
RUN yarn install
COPY ./features/ ./features/
ENTRYPOINT ["yarn","test"]
