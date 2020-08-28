FROM ubuntu:focal

EXPOSE 8754/tcp 30003/tcp 30334/tcp

RUN apt update && \
    apt install --no-install-recommends -y curl xmlstarlet ca-certificates && \
    curl -o /tmp/fr24feed.dpkg http://repo.feed.flightradar24.com/$(curl --silent http://repo.feed.flightradar24.com/| \
          xmlstarlet fo| \
          grep amd64| \
          grep ".deb"| \
          sed -e "s#<Key>##g" -e "s#</Key>##g" -e "s# ##g"| \
          sort --reverse|head -1) && \
    dpkg-deb -x /tmp/fr24feed.dpkg /tmp/fr24 && \
    mv -v /tmp/fr24/usr/bin/* /usr/bin/ && \
    mv -v /tmp/fr24/usr/lib/fr24 /usr/lib/ && \
    mv -v /tmp/fr24/usr/share/fr24 /usr/share/ && \
    rm -rf /tmp/fr24feed.dpkg /tmp/fr24 && \
    apt remove -y xmlstarlet curl && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY start.sh /bin/start.sh
RUN chmod +x /bin/start.sh

ENTRYPOINT /bin/start.sh