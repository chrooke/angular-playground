FROM node:latest

USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:${PATH}
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm install -g @angular/cli@latest

RUN mkdir /home/node/apps
WORKDIR /home/node/apps

EXPOSE 4200

CMD ng serve --host 0.0.0.0 --port 4200 --disable-host-check
