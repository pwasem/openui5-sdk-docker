# openui5-sdk-docker
Docker image for openui5 sdk

## Description
Serve `openui5` from a docker image.

Simply clone this repository.

Run `docker-compose up -d --build`

Browse to `http://localhost:5000/`

Version can be defined using `ui5_version`.

Enjoy!

### Behind the scenes

The docker image itself is build upon the latest [node:alpine](https://github.com/nodejs/docker-node) image.
When building the docker image the specified openui5 sdk will be download from https://github.com/SAP/openui5/releases/download.
Finally a web server using [fastify](https://www.fastify.io/) will be started to serve the openui5 sdk as fast a possible.
