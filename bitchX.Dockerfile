FROM ubuntu:15.04
MAINTAINER Marco Matos docker@corp.mmatos.com

RUN apt-get update && apt-get -f install
RUN apt-get install -y --force-yes 	wget \
									ncurses-dev \
									gcc \
									make
									
RUN wget http://www.bitchx.com/download/bitchx-1.2.1.tar.gz -O bitchx-1.2.1.tar.gz
RUN tar zxvfp bitchx-1.2.1.tar.gz

RUN cd /bitchx-1.2.1 && ./configure && make && make install

ENV ircserver chat.freenode.net

ENTRYPOINT ["/usr/local/bin/BitchX"]