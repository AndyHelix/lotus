# ubuntu14.04
FROM ubuntu:14.04
MAINTAINER AndyHelix <andyhelix@gmail.com>
RUN apt-get -qq update
#RUN apt-get -qqy install ruby ruby-dev
RUN apt-get -qqy install curl
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN gem -v;ruby -v
RUN gem install lotusrb

RUN mkdir /src/lotus; cd /src/lotus; lotus new myapp;

RUN cd /src/lotus/myapp; pwd; ls -l; bundle; bundle exec lotus server
