FROM node:20.13.1

WORKDIR /app

COPY package.json /app/package.json

RUN npm install 

RUN npm install -g @angular/cli@17.3.7

COPY . /app

EXPOSE 4200

CMD ng serve --host 0.0.0.0