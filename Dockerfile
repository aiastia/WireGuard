FROM alpine:3.8

RUN apk update \
    && apk add build-base \
    linux-hardened-dev \
    libmnl-dev  \
    git \
    && git clone https://git.zx2c4.com/WireGuard \
    && cd WireGuard/src \
    && make \
    && make install 

CMD ["wg-quick up wg0"]

