COPY package*.json ./
COPY . ./
RUN npm install
COPY . .