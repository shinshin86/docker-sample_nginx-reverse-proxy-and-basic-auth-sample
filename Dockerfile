FROM centos:7

RUN set -x && \
    yum install -y epel-release && \
    yum install -y nginx && \  
    mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf_BK && \
    mkdir -p /path/to/htpasswd && \
    echo "test:$(openssl passwd -apr1 password)" > /path/to/htpasswd/test && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80
COPY ./nginx.conf /etc/nginx/
CMD ["nginx", "-g", "daemon off;"]
