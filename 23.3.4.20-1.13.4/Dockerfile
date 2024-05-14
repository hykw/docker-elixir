FROM hykw/erlang:23.3.4.20

LABEL  maintainer "Hitoshi Hayakawa <hykw1234@gmail.com>"

RUN yum -y install http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm
RUN yum -y install epel-release
RUN yum -y install git telnet mysql inotify-tools psmisc

RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

ENV ERL_VER="23.3.4.20"
ENV ELIXIR_VER="1.13.4"

RUN \
   . /usr/local/erl/${ERL_VER}/activate && \
   cd /tmp && \
   git clone https://github.com/elixir-lang/elixir.git && \
   mv elixir /usr/local/ && \
   cd /usr/local/elixir && \
   git checkout -b v${ELIXIR_VER} refs/tags/v${ELIXIR_VER} && \
   make clean test
