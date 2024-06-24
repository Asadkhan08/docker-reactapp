FROM node:14-alpine as builder


WORKDIR /usr/app

COPY package.json .

RUN npm install

COPY . .


#RUN npm cache clean --force && npm install --verbose
#to build production build
RUN npm run build 

FROM nginx

COPY --from=builder /usr/app/build /usr/share/nginx/html


