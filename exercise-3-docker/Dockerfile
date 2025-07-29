FROM node:18-alpine
WORKDIR /app
COPY src package.json package-lock.json /app/
RUN npm ci --omit=dev
EXPOSE 8080
ENTRYPOINT ["npm", "run", "start"]
ENV SERVER_PORT=8080
ENV MONGODB_URL=http://localhost:27013