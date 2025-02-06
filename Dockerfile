FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN apk add --no-cache python3 
RUN npm install 

COPY . .

CMD ["npm", "start"] 