# Node.js runtime = base image
FROM node:14-alpine
RUN apk add curl
WORKDIR /newdir
COPY package*.json ./
RUN npm install
CMD ["npm", "start"]
