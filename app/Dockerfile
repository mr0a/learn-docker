FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install
ENTRYPOINT [ "npm", "start" ]
EXPOSE 8080
ENV DBHOST=localhost
ENV SERVER_PORT=8080