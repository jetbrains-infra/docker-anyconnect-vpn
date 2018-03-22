FROM alpine:3.5
RUN apk add openconnect --no-cache  --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
ADD entrypoint.sh /entrypoint.sh
HEALTHCHECK  --interval=10s --timeout=10s --start-period=10s \
  CMD /sbin/ifconfig tun0
CMD ["/entrypoint.sh"]
