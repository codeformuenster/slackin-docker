FROM node:6.9-slim

ARG SLACKIN_VERSION=0.14.0
RUN npm install --global --unsafe-perm slackin@$SLACKIN_VERSION

CMD slackin $SLACK_ORG $SLACK_TOKEN
EXPOSE 3000
