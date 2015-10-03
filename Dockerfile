FROM            ubuntu:latest
MAINTAINER      Bokum Guro <jiojiajiu@gmail.com>

RUN             apt-get update && apt-get -y install build-essential \
                                             wget python2.7 python2.7-dev
RUN             wget https://people.mozilla.org/~sstangl/mozjs-31.5.0.tar.bz2 -O /usr/src/mozjs-31.5.0.tar.bz2
RUN             cd /usr/src && tar xvf mozjs-31.5.0.tar.bz2
ENV             SHELL /bin/bash
RUN             cd /usr/src/mozjs-31.5.0/js/src && ./configure && make -j1
RUN             cd /usr/src/mozjs-31.5.0/js/src && make install
