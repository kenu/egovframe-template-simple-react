# react
FROM node:18.8-alpine

ENV APP_HOME=/usr/app/
RUN mkdir -p ${APP_HOME}
# 작업 시작 위치
WORKDIR $APP_HOME
COPY package*.json .
RUN npm i -g serve
RUN npm install
COPY . .
RUN npm run build

CMD ["serve", "-l", "3000", "-s", "dist"]
