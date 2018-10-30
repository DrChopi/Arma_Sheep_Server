FROM debian:latest
MAINTAINER DrChopi

USER root
ENV login anonymous
RUN apt update
RUN apt-get install -y lib32z1 lib32ncurses5 git wget gcc-6-multilib libgtk2.0-dev
RUN echo "deb http://httpredir.debian.org/debian/ jessie main contrib non-free" >> /etc/apt/sources.list
RUN dpkg --add-architecture i386
RUN apt update
RUN mkdir /opt/steam
RUN wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
RUN tar -xvzf steamcmd_linux.tar.gz -C /opt/steam && rm steamcmd_linux.tar.gz
RUN cd /opt/steam && $(find / | grep steamcmd.sh) +quit
