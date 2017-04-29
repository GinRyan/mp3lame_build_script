#this script running under cygwin environment
#
# Prerequisite:
#
# You have to use a standalone android NDK Toolchains to build lame.
# You have to install Cygwin on your Windows PC. Or you just install Linux on your PC.
#

#build arm ABI
export PATH=$PATH:D:/Toolchains/android_toolchains_arm/bin/
export SYSROOT=D:/Toolchains/android_toolchains_arm/sysroot/
export CC=D:/Toolchains/android_toolchains_arm/bin/arm-linux-androideabi-gcc 
export PREFIX=D:/Toolchains/mp3lame-arm/
export BUILD=x86
export HOST=arm-linux
export CFLAGS=--sysroot=$SYSROOT

./configure --prefix=$PREFIX \
	--host=$HOST \
	--build=$BUILD \
	--disable-nasm \
	--disable-analyzer-hooks \
	--disable-decoder \
	--disable-frontend \
	--disable-gtktest \
	--disable-rpath \
	
