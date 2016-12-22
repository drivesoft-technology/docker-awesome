FROM node:6.9.2

MAINTAINER Eakkabin Jaikeawma <eakkabin@drivesoft.co.th>

ADD ./app /usr/src/app

RUN cd /usr/src/app/
RUN npm install --production

WORKDIR /usr/src/app

EXPOSE 8000

CMD [ "npm", "start" ]
