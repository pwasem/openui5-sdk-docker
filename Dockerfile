FROM node:alpine

ARG ui5_version="1.69.1"
ARG ui5_filename="openui5-sdk-${ui5_version}.zip"
ARG ui5_url="https://github.com/SAP/openui5/releases/download/${ui5_version}/${ui5_filename}"

WORKDIR /home/node/app

## copy node sources
COPY . .

# install tmp. packages
RUN apk add --no-cache --virtual .sdk wget unzip python make g++

# download sdk
RUN wget ${ui5_url} --no-check-certificate -P /home/node/app

# unzip sdk
RUN unzip -o /home/node/app/${ui5_filename} -d /home/node/app/sdk

# delete sdk.zip
RUN rm /home/node/app/${ui5_filename}

# install node_modules
RUN yarn install --production

# delete tmp. packages
RUN apk del .sdk

# expose port
EXPOSE 3000

# start server
ENV NODE_ENV=production
CMD [ "yarn", "serve" ]



