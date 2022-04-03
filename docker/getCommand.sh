#!/bin/bash
apt-get update && apt-get install -y \
    make \
    sudo \
    curl \
    file \
    fonts-ipaexfont \
    fonts-noto-cjk

sed -i '$d' /etc/locale.gen \
    && echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen ja_JP.UTF-8 \
    && /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
/bin/bash -c "source /etc/default/locale"
ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
 
HOME="/home/rstudio"
chmod +x $HOME

cd $HOME
curl -OL https://jasp.ism.ac.jp/ism/TSSS/TSSS_1.3.3.tar.gz > $HOME/TSSS_1.3.3.tar.gz
R CMD INSTALL TSSS_1.3.3.tar.gz
#R library( TSSS )
