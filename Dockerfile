FROM alpine:latest

RUN apk add --no-cache nginx shadow
RUN adduser -S -H -D -u 1000 -s /sbin/nologin www-data

COPY ./files/nginx.conf /etc/nginx/nginx.conf

WORKDIR /mnt
CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
