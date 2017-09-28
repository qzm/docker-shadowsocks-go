 #!/bin/sh
SS_VERSION=1.2.1
TAG_VERSION=1.2.1
curl https://github.com/shadowsocks/shadowsocks-go/releases/download/${SS_VERSION}/shadowsocks-server.tar.gz -L | tar vxz
docker build --no-cache -t chiminyau/shadowsocks-go:${TAG_VERSION} -t chiminyau/shadowsocks-go:latest .
docker push chiminyau/shadowsocks-go
rm ./shadowsocks-server