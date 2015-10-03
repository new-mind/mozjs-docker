FROM            ubuntu:latest
MAINTAINER      Bokum Guro <jiojiajiu@gmail.com>

RUN             apt-get update && apt-get -y install build-essential \
                                             wget \ python2.7
RUN             wget https://people.mozilla.org/~sstangl/mozjs-31.5.0.tar.bz2 -O /usr/src/mozjs-31.5.0.tar.bz2
RUN             cd /usr/src && tar xvf mozjs-31.5.0.tar.bz2 && cd mozjs-31.5.0/js/src
RUN             ./configure && make -j1 && make install
