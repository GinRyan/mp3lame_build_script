# This script is running on Linux PC, you have to install NDK and pkg-config etc.

export TOOLCHAINS=/home/gin/toolchains/x86
export PATH=$PATH:$TOOLCHAINS/bin
export BINARIES_OUTPUT_PREFIX=/home/gin/ffbuilds_x86
export TOOLCHAINS_PREFIX=i686-linux-android-

export CC=${TOOLCHAINS_PREFIX}gcc
export CXX=${TOOLCHAINS_PREFIX}g++
export AR=${TOOLCHAINS_PREFIX}ar
export LD=${TOOLCHAINS_PREFIX}ld

export SYSROOT=/home/gin/toolchains/x86/sysroot
export CFLAGS=""
export LD_FLAGS=""

  ./configure \
    --prefix=${BINARIES_OUTPUT_PREFIX} \
    --enable-shared \
    --enable-static \
    --enable-doc \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-ffserver \
    --disable-symver \
    --cross-prefix=${TOOLCHAINS}/bin/i686-linux-android- \
    --target-os=linux \
    --arch=i686 \
    --enable-cross-compile \
    --enable-decoder=h264 \
    --sysroot=${SYSROOT} \
    --extra-cflags="-Os -fpic ${CFLAGS}" \
    --extra-ldflags="${LD_FLAGS}" \
    --pkg-config=$(which pkg-config) \




