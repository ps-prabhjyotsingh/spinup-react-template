FROM arm64v8/node:22-alpine
WORKDIR /usr/src/app
COPY package*.json ./
ENV PATH /usr/src/app/node_modules/.bin:$PATH

RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "run", "dev"]

