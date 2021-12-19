#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

OPENSSL_VERSION=openssl-3.0.1

downloadTarArchive \
  "openssl" \
  "https://github.com/openssl/openssl/archive/refs/tags/${OPENSSL_VERSION}.tar.gz" \

export SOURCES_DIR_openssl=$(pwd)/openssl-${OPENSSL_VERSION}
