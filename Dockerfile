FROM node:4.1

RUN npm install grunt-cli
RUN mkdir -p /sample_node_mongo
ADD package.json /sample_node_mongo/
WORKDIR /sample_node_mongo
RUN npm install
ENV NODE_ENV=production
WORKDIR /sample_node_mongo/dist
ADD . /sample_node_mongo

RUN grunt build

CMD npm run start
