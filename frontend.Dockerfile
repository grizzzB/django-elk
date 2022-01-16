FROM node:lts-alpine as develop-stage
WORKDIR /frontend
COPY ./frontend/package*.json ./
RUN npm install
RUN npm install -g @vue/cli
COPY ./frontend/ .
RUN npm run build
