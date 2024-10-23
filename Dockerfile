FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# Expone el puerto que la aplicación usará
EXPOSE 5000
# Define la variable de entorno para el puerto
ENV PORT=5000
# Comando para iniciar la aplicación
CMD ["node", "index.js"]