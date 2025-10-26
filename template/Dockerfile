FROM node:22-alpine
WORKDIR /usr/src/app
COPY package*.json ./
ENV PATH /usr/src/app/node_modules/.bin:$PATH

RUN npm install
COPY . .
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host","0.0.0.0"]

