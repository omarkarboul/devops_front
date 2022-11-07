FROM node:16.3.0-alpine as builder

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build --prod

CMD ["npm", "start"]

FROM nginx:alpine
COPY /default.conf /etc/nginx/conf/default.conf
COPY --from=builder app/dist/crudtuto-Front usr/share/nginx/html