FROM nginx:1.17.10

RUN sed -i -e "s/access_log \(.*\);$/#access_log \1;/g" /etc/nginx/nginx.conf && \
    sed -i -e "s/error_log \(.*\);$/#error_log \1;/g" /etc/nginx/nginx.conf
