FROM node:24-slim

WORKDIR /usr/src/app


COPY package.json package-lock.json ./

RUN npm ci

COPY . .

RUN npm run build

CMD ["node", "dist/main.js"]
