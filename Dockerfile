FROM node:lts-alpine3.9

RUN apk update && apk upgrade

WORKDIR '/project'

COPY /app/package*.json ./
RUN npm install

COPY /app/ ./

CMD ["npm", "run", "start"]
