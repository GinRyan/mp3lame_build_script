export PATH=$PATH:/opt/toolchain/arm/bin/
export SYSROOT=/opt/toolchain/arm/sysroot/
export CC=/opt/toolchain/arm/bin/arm-linux-androideabi-clang
export BUILD=x86-linux
export HOST=arm-linux
export TARGET=arm-linux-androideabi
export CFLAGS=--sysroot=$SYSROOT
./configure --prefix=/media/gin/E/OpenSource/speexdsp_arm/ --build=$BUILD --host=$HOST  --with-sysroot=$SYSROOT --enable-shared --enable-static --enable-neon
