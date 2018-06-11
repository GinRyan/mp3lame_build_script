#this script running under cygwin environment
#
# Prerequisite:
#
# You have to use a standalone android NDK Toolchains to build lame.
# You have to install Cygwin on your Windows PC. Or you just install Linux on your PC.
#
# Don't Use MINGW to run this script, MINGW has a bug that it will build failed.
# You have to modify the NDK standalone path for below variables.
#build x86 ABI
export PATH=$PATH:D:/Toolchains/android_toolchains_x86/bin/
export SYSROOT=D:/Toolchains/android_toolchains_x86/sysroot/
export CC=D:/Toolchains/android_toolchains_x86/bin/i686-linux-android-gcc 
export PREFIX=D:/Toolchains/mp3lame-x86/
export BUILD=x86
export HOST=i686-linux
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
	
