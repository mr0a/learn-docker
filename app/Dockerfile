FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install
ENTRYPOINT [ "node", "index.js" ]
EXPOSE 8080
ENV DBHOST=localhost
ENV SERVER_PORT=8080