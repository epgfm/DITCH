#! /bin/bash

export PATH=$PATH:$HOME/bin
export LD_LIBRARY_PATH=$HOME/lib
export PKG_CONFIG_PATH=$HOME/lib/pkgconfig

mkdir tmp && cd tmp

git clone git://git.xfce.org/xfce/xfce4-dev-tools
cd xfce4-dev-tools
./autogen.sh --prefix=$HOME
make
make install

cd ..
wget ftp://xmlsoft.org/libxml2/libxml2-2.9.2.tar.gz
tar xvf libxml2-2.9.2.tar.gz
cd libxml2-2.9.2/
./configure --prefix=$HOME
make
make install

cd ..
wget ftp://xmlsoft.org/libxml2/libxslt-1.1.28.tar.gz
tar xvf libxslt-1.1.28.tar.gz
cd libxslt-1.1.28
./configure --prefix=$HOME
make
make install

cd ..
git clone git://git.gnome.org/gtk-doc
cd gtk-doc/
./autogen.sh --prefix=$HOME
make
make install

cd ..
apt-get source libxfce4util
cd libxfce4util-4.10.1
./configure --prefix=$HOME
make
make install

cd ..
apt-get source dbus
cd dbus-1.6.18/
./configure --prefix=$HOME
make
make install

cd ..
apt-get source libdbus-glib-1-2
cd dbus-glib-0.100.2/
./configure --prefix=$HOME
make
make install

cd ..
apt-get source xfconf
cd xfconf-4.10.0/
./configure --prefix=$HOME
make
make install

cd ..
apt-get source libxfce4ui
cd libxfce4ui-4.11.1
./configure --prefix=$HOME
make
make install

cd ..
apt-get source garcon
cd garcon-0.3.0/
./configure --prefix=$HOME
make
make install

cd ..
apt-get source exo
cd exo-0.10.2/
./configure --prefix=$HOME
make
make install

cd ..
apt-get source libwnck
cd libwnck-2.30.7/
./configure --prefix=$HOME
make
make install

cd ..
apt-get source xfce4-panel
cd xfce4-panel-4.11.0
./configure --prefix=$HOME
make
make install

cd ..
apt-get source thunar
cd thunar-1.6.3/
./configure --prefix=$HOME
make
make install

cd ..
apt-get source xfce4-settings
cd xfce4-settings-4.11.2/
./configure --prefix=$HOME
make
make install

cd ..
apt-get source xfce4-session
cd xfce4-session-4.10.1/
./configure --prefix=$HOME
make
make install # error, disregard

cd ..
apt-get source xfdesktop4
cd xfdesktop4-4.11.8/
./configure --prefix=$HOME
make
make install

cd ..
apt-get source xfwm4
cd xfwm4-4.11.1
./configure --prefix=$HOME
make
make install

cd .. # back from tmp


