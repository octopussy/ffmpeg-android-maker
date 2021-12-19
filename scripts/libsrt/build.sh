#!/usr/bin/env bash

#export OPENSSL_ROOT_DIR=/Users/mcpussy/dev/ffmpeg-android-maker/sources/openssl/openssl-openssl-3.0.1
#export OPENSSL_LIB_DIR=$OPENSSL_ROOT_DIR/lib
#export OPENSSL_INCLUDE_DIR=$OPENSSL_ROOT_DIR/include

# export PKG_CONFIG_PATH=${INSTALL_DIR}/lib/pkgconfig

# export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"

# export DCMAKE_INSTALL_PREFIX=${INSTALL_DIR}

#./configure \
#    --prefix=${INSTALL_DIR} \
#    --host=${TARGET} \
#    --with-sysroot=${SYSROOT_PATH} \
   # --disable-shared \
   # --enable-static \
   # --with-pic \


#export FFMPEG_EXTRA_LD_FLAGS="${FFMPEG_EXTRA_LD_FLAGS} -lm"

#cmake -DCMAKE_INSTALL_PREFIX="${INSTALL_DIR}" -DENABLE_C_DEPS=ON -DENABLE_SHARED=OFF -DENABLE_STATIC=ON ..

#${MAKE_EXECUTABLE} clean
# cmake -DCMAKE_INSTALL_PREFIX="${INSTALL_DIR}" -DENABLE_SHARED="OFF" -DENABLE_C_DEPS="ON" ../srt
# cmake -DCMAKE_INSTALL_PREFIX="${INSTALL_DIR}" -DENABLE_C_DEPS=ON -DENABLE_SHARED=OFF -DENABLE_STATIC=ON ..
#${MAKE_EXECUTABLE} -j${HOST_NPROC}
#${MAKE_EXECUTABLE} install

# rm ${INSTALL_DIR}/lib/pkgconfig/haisrt.pc
