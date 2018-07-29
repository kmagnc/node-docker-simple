# build from image "node" version 8 from docker hub
FROM node:8

# app directory within container
WORKDIR /usr/src/app

# copy requirements packages into container.
# into workspace?
COPY package*.json ./

# install required packages from json file
RUN npm install

# bunde app's source code inside docker image
COPY . .

# expose port 8080 to have it mapped by docker daemon
EXPOSE 8080

# runtime will run "node server.js" from package.json
CMD ["npm", "start"]
