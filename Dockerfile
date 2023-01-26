FROM node

WORKDIR /usr/videos
COPY videos/ .

WORKDIR /usr/data
COPY example-3/ .

RUN npm i

ENV PORT=8000

EXPOSE 8000

CMD [ "npm", "start" ]