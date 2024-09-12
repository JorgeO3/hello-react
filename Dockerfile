# First stage: Build the app
FROM node:20.17-alpine3.20

WORKDIR /app

COPY . .

RUN yarn install

RUN yarn build

# Second stage: Serve the app with nginx
FROM nginx:1.27.1-alpine3.20-slim

COPY --from=0 /app/dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]