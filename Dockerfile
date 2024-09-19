FROM node
WORKDIR /
ADD package.json /
RUN npm install -g npm@6
RUN npm cache clean --force
RUN npm install
ADD . /
EXPOSE 8004
ENTRYPOINT ["npm", "start"]
