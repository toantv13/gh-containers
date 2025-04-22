FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.rbw7h21.mongodb.net
ENV MONGODB_USERNAME hihiiloveu520
ENV MONGODB_PASSWORD 5blNZiPTndCtHwLq

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]