#!/bin/sh
# Please run as root
# https://ius.io/GettingStarted/
curl -s https://setup.ius.io/ | bash
yum install -y git2u
yum install -y tmux2u
# Red Hat Software Collections
yum install -y centos-release-scl-rh
# Install devtoolset-7
yum install -y devtoolset-7-make
yum install -y devtoolset-7-gcc
yum install -y devtoolset-7-gcc-c++
yum install -y devtoolset-7-gdb
yum install -y devtoolset-7-binutils
# Enable devtoolset at login
scl_enable_cmd='source scl_source enable devtoolset-7'
grep -q "${scl_enable_cmd}" /etc/profile || echo "${scl_enable_cmd}" >> /etc/profile
$scl_enable_cmd
# Install emacs25 from source code
yum install -y wget
yum install -y ncurses-devel
(
  cd /usr/local/src
  wget -nc -nv http://ftp.gnu.org/pub/gnu/emacs/emacs-25.3.tar.xz 
  tar xJvf emacs-25.3.tar.xz
  cd emacs-25.3
  ./configure --without-x
  make install
)
