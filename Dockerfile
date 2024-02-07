# we will use node:alpine docker image
FROM node:alpine

# set /app as work directory
WORKDIR /app

# copy package.json to work directory, so that we install npm dependencies
COPY . /app

# install npm dependencies
RUN npm install

# copy your project files to work directory
RUN npm run build

# install necesary serve
RUN npm install -g serve

# expose the port that will use
EXPOSE 4000

# run build app
CMD ["npm", "run", "run-build"]