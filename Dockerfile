# Download the base image
FROM  alpine

# Details about the maintainer of the image
LABEL Maintainer = " uvmasterofnone@gmail.com"

# Install nodejs and npm
RUN apk add  nodejs nodejs-npm

#copy the application to the source folder
COPY . /src

# set the working directory
WORKDIR /src

# Install all requisite NPM  dependancies
RUN  npm install

# set the port
EXPOSE 8080

# Set the entrypoint to run the application
ENTRYPOINT ["node","./helloworld.js"]
