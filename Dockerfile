# ubuntu14.04
FROM ubuntu:14.04
MAINTAINER AndyHelix <andyhelix@gmail.com>
RUN apt-get -qq update
RUN apt-get -qqy install ruby ruby-dev
RUN gem install lotusrb

RUN mkdir /src/lotus; cd /src/lotus; lotus new myapp;

RUN cd /src/lotus/myapp; pwd; ls -l; bundle; bundle exec lotus server
