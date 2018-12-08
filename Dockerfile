FROM node:alpine as node-angular-cli

WORKDIR /app

COPY . /app

RUN npm install

RUN npm run build

EXPOSE 8000
ENV PORT 8000
CMD ["node","index.js"]


