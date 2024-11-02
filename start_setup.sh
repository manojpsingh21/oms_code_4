#!/bin/bash
sudo dnf install -y wget which
sudo dnf install -y coreutils --allowerasing
sudo ln -s /usr/lib64/libnsl.so.1 /usr/lib64/libnsl.so
sudo chown -R $USER:$USER /home/$USER/
mv ~/oms-src4.0-DUMMY_MASTER/* ~/
mv ~/oms-src4.0-DUMMY_MASTER/.bash_profile ./oms-src4.0-DUMMY_MASTER/.bashrc ./oms-src4.0-DUMMY_MASTER/.gitignore ~/
dos2unix ~/.bashrc
source ~/.bashrc
mkdir -p ~/Application/Objects
mkdir -p ~/Application/Exec/Run
sudo dnf install -y $HOME/MySQL-Cluster-*
sudo dnf install -y git 
rm -rf $HOME/MySQL-Cluster-*



cd /shared_migration/
wget https://archives.boost.io/release/1.80.0/source/boost_1_80_0.tar.gz
tar xvfz boost_1_80_0.tar.gz
cd boost_1_80_0/
./bootstrap.sh
./b2 --with-serialization --with-thread --with-program_options --with-log --with-filesystem --with-chrono --with-system --with-date_time

cd ~/
wget https://www.openssl.org/source/openssl-1.1.1w.tar.gz
tar xvfz openssl-1.1.1w.tar.gz
cd openssl-1.1.1w/
./config --prefix="/shared_migration/openssl_1.1.1w/"
make -j 4
make install 
sudo dnf install -y gnutls-devel libtiff libX11 giflib GConf2 libXft Xaw3d dbus-devel  dbus-glib-devel gpm-devel gtk3-devel jansson-devel libX11-devel libtiff-devel ncurses-devel webkit2gtk3
sudo dnf groupinstall -y "Development Tools"
rm -rf openssl-1.1.1w.tar.gz oms-src4.0-DUMMY_MASTER.tar.gz oms-src4.0-DUMMY_MASTER mysql_rpm.tar.gz openssl-1.1.1w wget-log
