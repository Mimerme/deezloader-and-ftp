#Install node container
FROM node

#NOTE: all of the data will be located in the /app folder
WORKDIR /app

ADD package.json /app

RUN npm config set registry 'http://registry.npmjs.org'
RUN yarn install

EXPOSE 1720

WORKDIR ./node_modules/deezloader-server/
CMD [ "yarn", "start" ]


