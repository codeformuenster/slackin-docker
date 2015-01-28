FROM dockerfile/nodejs

WORKDIR /sl/
COPY startslackin /sl/
RUN ["sh", "startslackin"]