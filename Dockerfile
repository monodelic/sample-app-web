FROM node:12-alpine

ENV APP_PATH ./Components
WORKDIR $APP_PATH

COPY ./Components/package.json ./
COPY ./Components ./

RUN apk add yarn bash vim

RUN yarn

EXPOSE 3000

CMD [ sh -c "nmp start" ]