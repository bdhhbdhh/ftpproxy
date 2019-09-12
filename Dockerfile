FROM alpine
ADD entrypoint.sh /
RUN ver=1.2.3-1 && \
    glibcver=2.30-r0 && \
    apk update && \
    apk --no-cache add ca-certificates wget rpm && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$glibcver/glibc-$glibcver.apk && \
    apk add glibc-$glibcver.apk && \
    rm glibc-$glibcver.apk && \
    url=http://www.ftpproxy.org/download/packages/ftpproxy-$ver.x86_64.rpm && \
    wget $url && \
    rpm -i ftpproxy-$ver.x86_64.rpm && \
    rm ftpproxy-$ver.x86_64.rpm && \
    chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
