FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY ./static /static
COPY ./nginx_template /etc/nginx/templates/

WORKDIR /app
COPY ./start.sh .

ENTRYPOINT [ "./start.sh" ]