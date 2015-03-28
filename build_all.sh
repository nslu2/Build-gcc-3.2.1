#/bin/sh
TOPDIR=`pwd`
mkdir -p objdir
export PATH
CONFIG_SHELL=/bin/bash
export CONFIG_SHELL
export CROSS_COMPILE_PREFIX
cd objdir
CFLAGS="-g -O2"
export CFLAGS
CXXFLAGS="-O2"
export CXXFLAGS
FFLAGS="-O2"
export FFLAGS
../configure --target=arm-linux --disable-shared --disable-threads --with-headers=../../../linux-2.4.x/include --with-gnu-as --with-gnu-ld --enable-multilib --enable-languages=c,c++
cd ../libiberty
make
cd ../objdir
rm -rf arm-linux
make
#make install
pwd
cd $TOPDIR
pwd

