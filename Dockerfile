FROM node:slim
RUN mkdir -p /app


COPY package.json /app
COPY package-lock.json /app

WORKDIR /app

RUN npm install

COPY . /app

CMD ["npm", "start"]
