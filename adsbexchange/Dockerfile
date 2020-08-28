FROM ubuntu:focal

RUN apt update && \
    apt install -y --no-install-recommends git \
                                           ca-certificates \
                                           make \
                                           gcc \
                                           zlib1g-dev \
                                           libncurses-dev && \
    git clone https://github.com/wiedehopf/readsb.git /tmp/readsb && \
    mv /tmp/readsb/readsb /bin/readsb 