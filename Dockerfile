FROM node:lts
WORKDIR /app
COPY . .
RUN npm clean install
RUN npm run build
