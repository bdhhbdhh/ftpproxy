FROM centos
ADD entrypoint.sh /
RUN ver=1.2.3-1 && \
        url=http://www.ftpproxy.org/download/packages/ftpproxy-$ver.x86_64.rpm && \
        rpm -i $url && \
        chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
