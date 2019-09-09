FROM centos
RUN ver=1.2.3 && url=http://www.ftpproxy.org/download/packages/ftpproxy-$ver-1.x86_64.rpm && rpm -i $url
CMD ["sh"]
