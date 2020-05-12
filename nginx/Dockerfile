FROM nginx:1.17.10

RUN sed -i -e "s/access_log (.*)$/access_log \1 main;/g" /etc/nginx/nginx.conf
