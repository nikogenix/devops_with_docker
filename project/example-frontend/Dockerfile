FROM node:16 as build-stage

WORKDIR /usr/app

COPY . .

RUN npm install && npm run build 

FROM alpine:latest  

WORKDIR /root/

RUN apk add --update nodejs npm && npm install -g serve

COPY --from=build-stage ./usr/app/build ./build

RUN adduser -D userapp
RUN chown userapp .
USER userapp

CMD serve -s -l 5000 build