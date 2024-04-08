FROM node:latest

WORKDIR /usr/src/app

RUN git clone https://github.com/SamuelBarondaSilva/EasyApi.git .
RUN rm -rf .git

RUN npm install
RUN npm install -g nodemon

ENV PORT=3000

EXPOSE $PORT

CMD ["npm", "run", "start"]
