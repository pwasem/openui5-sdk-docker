# openui5-sdk-docker
Docker image for serving an [OpenUI5](https://openui5.org/) SDK.

## Get started
Simply 
- `clone` this repository.
- run `docker-compose up -d --build`
- browse to `http://localhost:5000/`

**Enjoy!**

## Configuration
The desired OpenUI5 version can be defined setting `ui5_version` in your `docker-compose.yml`.

### Behind the scenes

The docker image itself is build upon the latest [node:alpine](https://github.com/nodejs/docker-node) image.

When building the docker image the specified openui5 sdk will be download from https://github.com/SAP/openui5/releases.

Finally a web server using [fastify](https://www.fastify.io/) will be started to serve the sdk as fast a possible.
