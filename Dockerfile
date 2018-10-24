FROM alpine

MAINTAINER sl <ott321@yeah.net>

RUN set -xe \
 && apk add --no-cache tzdata \
 && cp -r -f /usr/share/zoneinfo/Hongkong /etc/localtime

ADD ./entrypoint.sh /entrypoint.sh

ENTRYPOINT "/entrypoint.sh"
