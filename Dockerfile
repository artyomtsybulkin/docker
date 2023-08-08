FROM ubuntu:jammy
RUN apt update -y && apt upgrade -y
RUN apt install mc wget htop nmap curl git iproute2 -y
RUN apt install python3 python3-pip -y
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade setuptools
RUN apt install npm nodejs -y
RUN mkdir /mnt/GitHub
CMD /bin/bash
WORKDIR /mnt/GitHub
ENV TERM=xterm