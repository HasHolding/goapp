#!/bin/sh
tar -jxvf /shared/${APPNAME}/${APPNAME}.tar.bz2 -C /bin
chmod +x /bin/${APPNAME}
/bin/${APPNAME}
