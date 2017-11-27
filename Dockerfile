FROM alpine:latest
VOLUME /srv
COPY srv /srv
WORKDIR /srv
EXPOSE 80
ENTRYPOINT ["/srv/goapp/goapp-setup.sh"]
