# openui5-sdk-docker
Docker image for openui5 sdk

## Description
Serve `openui5` from a docker image.

Simply clone this repository.

Run `docker-compose up -d --build`

Browse to `http://localhost:5000/` or `https://localhost:5443` (attention, self-signed SSL certificate!)

Version can be defined using `ui5_version` in both

- `Dockerfile`
- `.env`

Enjoy!
