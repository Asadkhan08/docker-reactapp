FROM node:14-alpine as builder


WORKDIR /usr/app

COPY package.json .

RUN npm install

COPY . .

run npm run build

FRON nginx

COPY --from=builder /usr/app/build /usr/share/nginx/html


