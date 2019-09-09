FROM centos
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN ver=1.2.3 && url=http://www.ftpproxy.org/download/packages/ftpproxy-$ver-1.x86_64.rpm && rpm -i $url && chmod +x /tini
ENTRYPOINT ["/tini", "--", "ftp.proxy", "-b", "-D", "21"]
