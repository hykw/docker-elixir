FROM hykw/erlang:20.1

LABEL  maintainer "Hitoshi Hayakawa <hykw1234@gmail.com>"

RUN yum -y install git telnet mysql && \
  yum -y install http://dl.fedoraproject.org/pub/epel/6/i386//inotify-tools-3.14-1.el6.i686.rpm


ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

ENV ERL_VER="20.1"
ENV ELIXIR_VER="1.5.2"

RUN \
   . /usr/local/erl/${ERL_VER}/activate && \
   cd /tmp && \
   git clone https://github.com/elixir-lang/elixir.git && \
   mv elixir /usr/local/ && \
   cd /usr/local/elixir && \
   git checkout -b v${ELIXIR_VER} refs/tags/v${ELIXIR_VER} && \
   make clean test
