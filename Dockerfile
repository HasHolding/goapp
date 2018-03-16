FROM hasholding/alpine-base
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"

ENV APPNAME "goapp"

VOLUME /shared
COPY srv /shared
COPY bin /bin

EXPOSE 80
ENTRYPOINT ["/bin/entrypoint.sh"]
