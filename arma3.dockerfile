FROM arma_sheep_server/steam:latest
MAINTAINER DrChopi

USER root
ENV login Arma_Sheep_Server
ENV password hBJpiaCem9PAYzSADVvgtnys
RUN mkdir /opt/arma3 && cd /opt/arma3
RUN $(find / | grep steamcmd.sh) +login $login $password +force_install_dir /opt/arma3 +app_update 233780 validate +quit
RUN git clone https://github.com/DrChopi/Arma-Linux-Default-Config.git && mv Arma-Linux-Default-Config config
RUN ln -s /opt/steam/linux32/libstdc++.so.6 libstdc++.so.6
