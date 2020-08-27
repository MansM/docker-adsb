FROM ubuntu

RUN apt update && \
    apt install -y curl xmlstarlet && \
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
    rm -rf /tmp/fr24feed.dpkg /tmp/fr24

COPY start.sh /bin/start.sh
RUN chmod +x /bin/start.sh

ENTRYPOINT /bin/start.sh