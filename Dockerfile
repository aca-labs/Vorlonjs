FROM node:10-alpine
MAINTAINER William Le (w.le@acaprojects.com)

# Expose port 1337
EXPOSE 1337

# Upgrade to last NPM version
RUN npm upgrade -g npm

# Install gulp
RUN npm install -g gulp

# Set the entry point
ENTRYPOINT ["npm", "start"]

# Create the application directory
RUN mkdir -p /usr/src/vorlonjs

# Copy the application content
COPY . /usr/src/vorlonjs/

# Set app root as working directory
WORKDIR /usr/src/vorlonjs

# Run npm install
RUN npm install

# Run gulp
RUN gulp
