export PATH=$PATH:/opt/toolchain/x86/bin/
export SYSROOT=/opt/toolchain/x86/sysroot/
export CC=/opt/toolchain/x86/bin/i686-linux-android-clang
export BUILD=x86-linux
export HOST=i686-linux
export CFLAGS=--sysroot=$SYSROOT
./configure --prefix=/media/gin/E/OpenSource/speexdsp_x86/ --build=$BUILD --host=$HOST --with-sysroot=$SYSROOT --enable-shared --enable-static --disable-neon
