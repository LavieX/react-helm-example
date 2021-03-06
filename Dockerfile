# base image
FROM node:9.11.1-alpine

# set working directory
RUN mkdir /src /src/app
WORKDIR /src/app

# add `/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /src/app/package.json
RUN npm install --silent
RUN npm install react-scripts@1.1.1 -g --silent

# start app
CMD ["npm", "start"]
