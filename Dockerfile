FROM dockerfile/nodejs

WORKDIR /home/slackin
COPY startslackin /home/slackin/
CMD ["sh", "startslackin"]