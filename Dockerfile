FROM alpine
RUN ver=1.2.3 && url=http://www.ftpproxy.org/download/packages/ftpproxy-$ver-1.x86_64.rpm && apk update && apk add rpm libc6-compat && wget -O ftpproxy.rpm $url
CMD ["sh"]
