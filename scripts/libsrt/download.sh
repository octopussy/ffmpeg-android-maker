#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

SRT_VERSION=1.4.4

downloadTarArchive \
  "libsrt" \
  "https://codeload.github.com/Haivision/srt/tar.gz/refs/tags/v${SRT_VERSION}" \

export SOURCES_DIR_libsrt=$(pwd)/srt-${SRT_VERSION}
