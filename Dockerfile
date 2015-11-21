FROM httpd
MAINTAINER Gerald Fiedler <gfiedler@sftech.de>

COPY adduser addgroup deluser delgroup import export /usr/local/bin/
COPY httpd.conf $HTTPD_PREFIX/conf/

RUN mkdir -p $HTTPD_PREFIX/conf.d && \
    mkdir -p $HTTPD_PREFIX/htdocs/user && \
    touch $HTTPD_PREFIX/conf.d/passwd && \
    rm $HTTPD_PREFIX/htdocs/index.html

VOLUME $HTTPD_PREFIX/htdocs
VOLUME $HTTPD_PREFIX/conf.d

