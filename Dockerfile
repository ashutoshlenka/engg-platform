FROM node:alpine

WORKDIR /usr/src/opt

COPY package*.json ./

RUN npm install

COPY . .

USER app

EXPOSE 3000

CMD [ "node", "index.js" ]

