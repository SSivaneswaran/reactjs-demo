FROM node:14-alpine
WORKDIR /reactjs-demo
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]

