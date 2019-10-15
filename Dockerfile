FROM nginx:1.17.4
#ENV PORT 8085
COPY ./conf/default.conf.template /etc/nginx/conf.d/default.conf.template
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./src/ /usr/share/nginx/html

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
