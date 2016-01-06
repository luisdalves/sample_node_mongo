FROM node:4.1

RUN npm install -g webpack forever phantomjs karma-cli grunt-cli browser-sync
RUN mkdir -p /sample_node_mongo
ADD package.json .npmrc /sample_node_mongo/
WORKDIR /sample_node_mongo
RUN npm install
ENV NODE_ENV=production
WORKDIR /sample_node_mongo/dist
ADD . /sample_node_mongo

RUN grunt build

CMD npm run start
