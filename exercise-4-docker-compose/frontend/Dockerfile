FROM node:18-alpine
WORKDIR /app
COPY public /app/public
COPY index.js package.json /app/
RUN npm i
ENTRYPOINT [ "npm", "run", "dev" ]
EXPOSE 3000
ENV PORT=3000