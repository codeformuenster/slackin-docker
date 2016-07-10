FROM node:6.2

ARG SLACKIN_VERSION=0.8.3
RUN npm install --global --unsafe-perm slackin@$SLACKIN_VERSION

CMD slackin $SLACK_ORG $SLACK_TOKEN
EXPOSE 3000
