FROM rocker/tidyverse:3.6.3

USER root

RUN apt-get update --allow-releaseinfo-change -y && apt-get install -y \
    bash

ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

ADD getCommand.sh /root/getCommand.sh
RUN chmod +x /root/getCommand.sh
RUN bash /root/getCommand.sh

WORKDIR /home/rstudio/kitematic/