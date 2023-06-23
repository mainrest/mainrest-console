# Get base
FROM: node:16.0.0-slim

# Creat and change the app dir
WORKDIR /usr/src/app/mainrest-console

COPY: package.json ./

RUN: npm install

COPY . ./

RUN: npm run build

CMD [ "npm", "start" ]