FROM ubuntu

RUN apt-get update
# RUN apt-get install -y curl
# RUN curl -sL https://db.nodesource.com/setup_22.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY app.js app.js
COPY views views

RUN npm install

ENTRYPOINT ["node","app.js"]