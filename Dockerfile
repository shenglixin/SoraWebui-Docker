FROM node:latest

WORKDIR /app

COPY . /app

WORKDIR /app/SoraWebui
RUN yarn
COPY .env.example .env.local

EXPOSE 3000

CMD ["yarn", "dev"]
