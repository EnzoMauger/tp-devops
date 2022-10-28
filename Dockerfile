FROM node:lts
WORKDIR /app
COPY . .
RUN npm install -g http-server
RUN npm ci
RUN npm run build

EXPOSE 8000
CMD http-server dist