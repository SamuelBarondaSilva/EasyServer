FROM node:latest

WORKDIR /usr/src/app

RUN git clone https://github.com/SamuelBarondaSilva/EasyFront.git .

RUN npm install

ENV PORT=80

EXPOSE $PORT

CMD ["npm", "run", "start"]