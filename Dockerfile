FROM alpine:3.8

RUN apk update
    && apk add -U wireguard-tools
    

RUN wg-quick up wg0



