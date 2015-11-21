FROM node:4.2

WORKDIR /home/slackin
COPY startslackin /home/slackin/
RUN npm install -g slackin
CMD ["sh", "startslackin"]
