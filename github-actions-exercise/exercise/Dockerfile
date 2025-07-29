FROM node:18-alpine
WORKDIR /app
COPY dist .
RUN npm ci --omit=dev
ENTRYPOINT [ "npm", "start" ]
EXPOSE 3000