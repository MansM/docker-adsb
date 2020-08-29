FROM ubuntu:focal as builder

RUN apt update && \
    apt install -y --no-install-recommends git \
                                           ca-certificates \
                                           make \
                                           gcc \
                                           zlib1g-dev \
                                           libncurses-dev && \
    git clone https://github.com/wiedehopf/readsb.git /tmp/readsb && \
    cd /tmp/readsb && \
    make
    # mv /tmp/readsb/readsb /bin/readsb && \
    # rm -rf /tmp/readsb && \
    # apt remove -y git gcc zlib1g libncurses-dev && \
    # apt autoremove -y && \
    # rm -rf /var/lib/apt/lists/*

FROM ubuntu:focal 

COPY --from=builder /tmp/readsb/readsb /bin/readsb

RUN apt update && \
    apt install -y --no-install-recommends ca-certificates && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY start.sh /bin/start.sh
RUN chmod +x /bin/start.sh

ENTRYPOINT /bin/start.sh