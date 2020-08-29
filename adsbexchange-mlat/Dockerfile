FROM ubuntu:focal as builder

RUN apt update && \
    apt install -y --no-install-recommends git \
                                           ca-certificates \
                                           gcc \
                                           python3 \
                                           python3-pip \
                                           python3-dev && \
    pip3 install -e \
        git+https://github.com/adsbxchange/mlat-client.git#egg=mlatclient && \
    apt remove -y gcc python3-dev && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY start.sh /bin/start.sh
RUN chmod +x /bin/start.sh

ENTRYPOINT /bin/start.sh