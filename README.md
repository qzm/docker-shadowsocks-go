# docker-shadowsocks-go
build from busybox with [shadowsocks-go](https://github.com/shadowsocks/shadowsocks-go/releases)

[![](http://dockeri.co/image/chiminyau/shadowsocks-go)](https://hub.docker.com/r/chiminyau/shadowsocks-go/)

## open source
https://github.com/qzm/docker-shadowsocks-go

Compressed Size: only 2 MB

## docker run
```shellscript
docker run -d -p 443:443 \
  --env SS_PORT=443 \
  --env SS_PASSWORD=password \
  --env SS_METHOD=aes-256-cfb \
  --env SS_TIMEOUT=300 \
  chiminyau/shadowsocks-go
```
## docker compose
```yaml
version: '2.1'

services:
  shadowsocks:
    image: chiminyau/shadowsocks-go
    ports:
      - 443:443
    environment:
      - SS_PORT=443
      - SS_PASSWORD=password
      - SS_METHOD=aes-256-cfb
      - SS_TIMEOUT=300
```
