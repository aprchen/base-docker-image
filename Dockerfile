FROM alpine

MAINTAINER sl <ott321@yeah.net>

ENV TIME_ZONE = Asia/Shanghai

RUN set -xe \
 && apk add --no-cache tzdata \
 && echo "${TIME_ZONE}" > /etc/timezone \
 && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh /entrypoint.sh"]
