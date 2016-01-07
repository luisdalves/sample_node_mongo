FROM node:4.1

RUN npm install -g grunt-cli
RUN mkdir -p /sample_node_mongo
ADD Gruntfile.js index.js model.js package.json test.js /sample_node_mongo/
WORKDIR /sample_node_mongo
RUN npm install
RUN npm test

CMD npm run start
