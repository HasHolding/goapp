FROM alpine:latest
# Upgrade
RUN apk update
RUN apk upgrade
RUN apk add ca-certificates && update-ca-certificates
# Change TimeZone
RUN apk add --update tzdata
RUN cp /usr/share/zoneinfo/Europe/Istanbul /etc/localtime
RUN echo "Europe/Istanbul" >  /etc/timezone
RUN apk del tzdata

VOLUME /srv
COPY srv /srv
WORKDIR /srv
EXPOSE 80
ENTRYPOINT ["/srv/goapp/goapp-setup.sh"]
