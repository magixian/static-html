FROM nginx:alpine
COPY ./conf/default.conf /etc/nginx/conf.d
COPY ./src/ /usr/share/nginx/html
EXPOSE 4300
