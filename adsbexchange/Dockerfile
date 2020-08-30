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

FROM ubuntu:focal 

COPY --from=builder /tmp/readsb/readsb /bin/readsb

RUN apt update && \
    apt install -y --no-install-recommends ca-certificates && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY start.sh /bin/start.sh
RUN chmod +x /bin/start.sh

RUN useradd adsb
USER adsb

ENTRYPOINT /bin/start.sh