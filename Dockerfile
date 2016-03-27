FROM codefresh/buildpacks:all

ENV NVM_BIN /root/.nvm/versions/node/v0.12.7/bin
ENV PATH $NVM_BIN:$PATH

COPY package.json /src/package.json
WORKDIR /src
RUN npm install

COPY . /src

EXPOSE 9000

CMD ["node", "/src/app.js"]