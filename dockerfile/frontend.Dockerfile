FROM node:lts-alpine as develop-stage
WORKDIR /frontend
COPY $PWD/frontend/package*.json ./
RUN npm install
RUN npm install -g @vue/cli
COPY $PWD/frontend/ .
RUN npm run build
