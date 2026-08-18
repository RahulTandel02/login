FROM mcr.microsoft.com/playwright:v1.62.1-noble

WORKDIR /

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]