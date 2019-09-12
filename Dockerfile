FROM frolvlad/alpine-glibc
ADD entrypoint.sh /
RUN ver=1.2.3 && \
    url=http://www.ftpproxy.org/download/packages/ftpproxy-$ver-1.x86_64.rpm && \
    apk update && \
    apk add rpm && \
    wget -O ftpproxy.rpm $url && \
    rpm -i ftpproxy.rpm && \
    rm ftpproxy.rpm && \
    chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
