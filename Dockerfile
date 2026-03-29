FROM node:lts

WORKDIR /app

COPY package*.json ./
COPY . .

ARG NODE_ENV=production
ENV NODE_ENV=$NODE_ENV
EXPOSE 3000

CMD ["npm", "start"]