# Base image
FROM alpine:latest

# Installs required packages for our script
RUN apk add --no-cache \
    bash \
    ca-certificates \
    curl \
    jq

# Copies your "code" to the filesystem
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
