FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ARG PORT=5000
ENV PORT=${PORT}
EXPOSE ${PORT}
CMD ["node", "index.js"]