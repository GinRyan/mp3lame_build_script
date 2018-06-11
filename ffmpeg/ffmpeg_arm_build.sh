
export TOOLCHAINS=/home/gin/toolchains/arm
export PATH=$PATH:$TOOLCHAINS/bin
export BINARIES_OUTPUT_PREFIX=/home/gin/ffbuilds
export TOOLCHAINS_PREFIX=arm-linux-androideabi-

export CC=arm-linux-androideabi-gcc
export CXX=arm-linux-androideabi-g++
export AR=arm-linux-androideabi-ar
export LD=arm-linux-androideabi-ld

export SYSROOT=/home/gin/toolchains/arm/sysroot
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
    --cross-prefix=${TOOLCHAINS}/bin/arm-linux-androideabi- \
    --target-os=linux \
    --arch=arm \
    --enable-cross-compile \
    --enable-decoder=h264 \
    --sysroot=${SYSROOT} \
    --extra-cflags="-Os -fpic ${CFLAGS}" \
    --extra-ldflags="${LD_FLAGS}" \
    --pkg-config=$(which pkg-config) \
