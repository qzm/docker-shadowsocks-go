FROM busybox
WORKDIR /usr/app
ENV SS_VERSION=1.2.1
ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/${SS_VERSION}/shadowsocks-server.tar.gz /usr/app/
RUN tar -vxzf shadowsocks-server.tar.gz && rm shadowsocks-server.tar.gz
CMD /usr/app/shadowsocks-server  \
    -p ${SS_PORT:=443} \
    -k ${SS_PASSWORD:=password} \
    -m ${SS_METHOD:=aes-256-cfb} \
    -t ${SS_TIMEOUT:=60} \