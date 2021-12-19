#!/usr/bin/env bash
#!/bin/bash

export TOOLCHAIN_PATH=${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/${HOST_TAG}
export SYSROOT_PATH=${TOOLCHAIN_PATH}/sysroot

export ANDROID_NDK_ROOT=$ANDROID_NDK_HOME

# export CROSS_SYSROOT=$SYSROOT_PATH

# /Users/mcpussy/Library/Android/sdk/ndk-bundle/toolchains/llvm/prebuilt/darwin-x86_64
echo "---------------TOOLCHAIN PATH-------------"
echo $TOOLCHAIN_PATH
echo "------------------------------------------"

# :$ANDROID_NDK_HOME/toolchains/x86_64-4.9/prebuilt/darwin-x86_64/bin
PATH=$TOOLCHAIN_PATH/bin:$PATH
ANDROID_TOOLS="i686-linux-android-gcc i686-linux-android-ranlib i686-linux-android-ld"

./configure android-x86_64 --prefix=${INSTALL_DIR} --openssldir=${INSTALL_DIR} #--static
  #  --prefix=${INSTALL_DIR} \
 #   --openssldir=${INSTALL_DIR} \
#    --static \
    
   # --host=${TARGET} \
   # --with-sysroot=${SYSROOT_PATH} \


export FFMPEG_EXTRA_LD_FLAGS="${FFMPEG_EXTRA_LD_FLAGS} -lm"

# cmake -DCMAKE_INSTALL_PREFIX="${INSTALL_DIR}" -DENABLE_C_DEPS=ON -DENABLE_SHARED=OFF -DENABLE_STATIC=ON ..

#${MAKE_EXECUTABLE} clean
#${MAKE_EXECUTABLE} -j${HOST_NPROC}
#${MAKE_EXECUTABLE} install
${MAKE_EXECUTABLE}

OUTPUT_INCLUDE=${INSTALL_DIR}/include
OUTPUT_LIB=${INSTALL_DIR}/lib
OUTPUT_PKG_CONFIG=${INSTALL_DIR}/lib/pkgconfig
mkdir -p $OUTPUT_INCLUDE
mkdir -p $OUTPUT_LIB
mkdir -p $OUTPUT_PKG_CONFIG
cp -RL include/openssl $OUTPUT_INCLUDE
#cp libcrypto.so $OUTPUT_LIB
#cp libcrypto.so.1.1 $OUTPUT_LIB/libcrypto.so
cp libcrypto.a $OUTPUT_LIB
#cp libssl.so $OUTPUT_LIB
#cp libssl.so.1.1 $OUTPUT_LIB/libssl.so
cp libssl.a $OUTPUT_LIB
cp libssl.pc $OUTPUT_PKG_CONFIG
cp libcrypto.pc $OUTPUT_PKG_CONFIG
cp openssl.pc $OUTPUT_PKG_CONFIG