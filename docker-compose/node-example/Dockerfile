FROM node:8.9.4-alpine
LABEL Eakkabin Jaikeawma <eakkabin@drivesoft.co.th>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./app /usr/src/app/
RUN npm install --production

EXPOSE 8000

CMD [ "npm", "start" ]