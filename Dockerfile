FROM node:latest
LABEL authors="jruiz"

RUN mkdir -p /apps/articlexpress
WORKDIR /apps/articlexpress

COPY package.json /apps/articlexpress/
RUN npm install express http-errors body-parser mongoose cors --save
COPY . /apps/articlexpress/

EXPOSE 5005
CMD ["node", "app.js"]
