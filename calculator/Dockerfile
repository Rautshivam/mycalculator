FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

# App should run on 8080
EXPOSE 3000

# Health check endpoint
HEALTHCHECK CMD curl --fail http://localhost:8080/health || exit 1

CMD [ "npm", "start" ]