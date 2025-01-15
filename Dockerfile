FROM docker.io/library/spark:3.4.4

USER root

ENV LANG=ja_JP.UTF-8

RUN \
  \
  apt -y update && \
  DEBIAN_FRONTEND=noninteractive apt -y install \
  dumb-init \
  language-pack-ja \
  && \
  \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  dpkg-reconfigure -f noninteractive tzdata && \
  \
  localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8

USER spark

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["sh", "-c", "while :; do echo 'Container is running'; sleep 60; done"]
