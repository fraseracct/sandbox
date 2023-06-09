FROM ubuntu:16.04
RUN apt-get update \
  && apt-get install -y traceroute \
  curl \
  dnsutils \
  netcat-openbsd \
  jq \
  nmap \
  net-tools \
  telnet \
  tcpdump \
  supervisor \
  && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /opt/axway
COPY supervisord.conf /etc/supervisord/sandboxbasic.conf
ENV SUPERVISORCONF /etc/supervisord/sandboxbasic.conf
CMD /usr/bin/python /usr/bin/supervisord -c $SUPERVISORCONF
EXPOSE 9001
