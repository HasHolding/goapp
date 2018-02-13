FROM alpine:latest
MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>

ARG TIMEZONE=Europe/Istanbul

RUN apk add --update --no-cache tar tzdata ca-certificates && \
       update-ca-certificates && \
       cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \
       echo "${TIMEZONE}" >  /etc/timezone && \
    apk del tzdata

ENV APPNAME "goapp"

VOLUME /srv
COPY srv /srv
COPY bin /bin

EXPOSE 80
ENTRYPOINT ["/bin/entrypoint.sh"]
