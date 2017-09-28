FROM alpine
WORKDIR /usr/app
ADD ./shadowsocks-server /usr/app/shadowsocks-server
CMD /usr/app/shadowsocks-server  -p ${SS_PORT} -k ${SS_PASSWORD} -m ${SS_METHOD} -t ${SS_TIMEOUT} 