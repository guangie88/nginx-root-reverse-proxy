FROM nginx:1-alpine

RUN apk add --no-cache python3 \
    && pip3 install yasha

COPY ./nginx.conf.j2 /tmp/nginx.conf.j2

CMD ["sh", "-c", "yasha -o /etc/nginx/conf.d/default.conf /tmp/nginx.conf.j2 \
    && rm /tmp/nginx.conf.j2 \
    && nginx -g 'daemon off;'"]
