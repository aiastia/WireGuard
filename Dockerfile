FROM alpine:3.8

RUN apk add --update --no-cache ca-certificates \
    && apk add -U wireguard-tools
    

RUN wg-quick up wg0



