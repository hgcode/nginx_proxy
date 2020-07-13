FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx_template /etc/nginx/templates/
