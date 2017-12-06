FROM debian

ENV XONOTIC_ARCHIVE http://dl.xonotic.org/xonotic-0.8.2.zip

RUN apt-get update && apt-get install -y zip unzip wget curl && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN wget --quiet -O /opt/xonotic.zip $XONOTIC_ARCHIVE && \
  unzip /opt/xonotic.zip -d /opt && \
  rm /opt/xonotic.zip && \
  cp /opt/Xonotic/server/server_linux.sh /opt/Xonotic/server_linux.sh && \
  cp /opt/Xonotic/server/server.cfg /opt/Xonotic/data/server.cfg && \
  rm -rf Docs Makefile Xonotic.app bin32 source *.exe xonotic-osx-dedicated xonotic-linux32*

EXPOSE 26000/udp
VOLUME ["/opt/Xonotic/data", "/opt/Xonotic"]
WORKDIR /opt/Xonotic

CMD ["/opt/Xonotic/server_linux.sh"]
