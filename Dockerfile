FROM node:alpine

WORKDIR '/project'

RUN git clone https://github.com/marley-nodejs/voting-game .
RUN npm install

CMD ["npm", "run", "start"]

# FROM marley/nodejs:latest

# RUN git clone https://github.com/marley-nodejs/voting-game .
# RUN npm install

# CMD ["npm", "start"]
