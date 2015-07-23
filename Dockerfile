FROM ubuntu:14.04

RUN sudo apt-get -q -y update
RUN sudo apt-get -q -y install nodejs npm git

RUN sudo ln -s "$(which nodejs)" /usr/bin/node

RUN npm install npm -g

#application server
EXPOSE 80
#nodejs debug port
EXPOSE 9000
#node inspector port
EXPOSE 8080
EXPOSE 8585

COPY . /src

CMD ["/usr/bin/node", "/src/app.js"]
