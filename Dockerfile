FROM node:alpine

RUN apk update && apk upgrade

WORKDIR '/project'

COPY ./package*.json .
RUN npm install

COPY . .

CMD ["npm", "run", "start"]
