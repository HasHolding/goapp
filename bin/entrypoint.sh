#!/bin/sh
tar -jxvf /srv/${APPNAME}/${APPNAME}.tar.bz2 -C /bin
chmod +x /bin/${APPNAME}
/bin/${APPNAME}
