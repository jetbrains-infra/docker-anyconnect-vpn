FROM alpine:3.5
RUN apk add openconnect --no-cache  --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
ADD entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]
