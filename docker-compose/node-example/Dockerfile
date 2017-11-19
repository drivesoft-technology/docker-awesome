FROM node:6.12.0
LABEL Eakkabin Jaikeawma <eakkabin@codestep.io>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD app/package.json /usr/src/app/
RUN npm install --production

COPY ./app /usr/src/app/

EXPOSE 8000

CMD [ "npm", "start" ]