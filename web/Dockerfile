#Dockerfile
FROM nginx:latest

RUN apt-get udpate
RUN apt_get install vim

COPY ./.bashrc /root/.bashrc
COPY web/conf.d/default.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
