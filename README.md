# `nginx-root-reverse-proxy`

Dockerfile setup to have Nginx perform rewrite server name rewrite to have reverse proxy at root level.

## Command to run

```bash
docker run -d --rm -it \
    --name reverse-proxy \
    -p 80:80 \
    -e PORT=80 \
    -e LISTENING_ADDR=localhost \
    -e REWRITE_URL=https://www.google.com \
    guangie88/nginx-root-reverse-proxy:latest
```
