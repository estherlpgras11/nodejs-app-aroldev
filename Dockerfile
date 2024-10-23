FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5000
ARG PORT=5000
CMD ["node", "index.js"]