FROM node:22.3.0-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN corepack enable

RUN yarn install

COPY . .

EXPOSE 5001

CMD ["node", "bot.js"]
