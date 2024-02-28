FROM node:18.17.0

WORKDIR /app

COPY . /app

WORKDIR /app/SoraWebui
RUN yarn config set registry https://registry.npmmirror.com/
RUN yarn install
COPY .env.example .env.local

EXPOSE 80

CMD ["yarn", "run", "dev"]
