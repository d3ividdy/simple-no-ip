# Simple No-IP

Atualização do IP Publico no No-IP, recomendado para uso em cron

## Modo de Uso

### Docker

```sh
docker run --name simple-no-ip \
    -e NO_IP_USER=<noip_user> \
    -e NO_IP_PASS=<noip_password> \
    -e NO_IP_DDNS=<noip_ddns> \
    deividdy/simple-no-ip:0.0.1
```

## Change-log (tags)

- 0.0.1
  - base code

## Docker Build & Publish

```sh
docker build -f Dockerfile -t deividdy/simple-no-ip:<tag> . --no-cache
docker push deividdy/simple-no-ip:<tag>
```
