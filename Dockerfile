FROM node:10-alpine

ARG SLACKIN_VERSION=0.14.0

WORKDIR /home/node
RUN apk add --no-cache git

USER node

RUN git clone --branch $SLACKIN_VERSION --depth 1 https://github.com/rauchg/slackin.git .
COPY files/.babelrc ./
COPY files/package.json ./
RUN npm install

CMD ./bin/slackin $SLACK_ORG $SLACK_TOKEN f f
EXPOSE 3000
