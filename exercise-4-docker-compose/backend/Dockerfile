FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm i
ENTRYPOINT [ "npm", "run", "dev" ]
EXPOSE 8000
ENV MONGO_URI=mongodb://localhost:27017
ENV PORT=8000
