FROM node

WORKDIR /usr/src/app

RUN git clone https://github.com/bonbon197/nimi-sensei.git . \
    && git submodule init \
    && git submodule update

COPY package*.json ./

RUN npm install

# EXPOSE 8080
CMD [ "npm", "start" ]