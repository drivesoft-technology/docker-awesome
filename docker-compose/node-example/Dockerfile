FROM node:6.10.3

MAINTAINER Eakkabin Jaikeawma <eakkabin@drivesoft.co.th>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD app/package.json /usr/src/app/
RUN npm install --production

COPY ./app /usr/src/app/

EXPOSE 8000

CMD [ "npm", "start" ]
