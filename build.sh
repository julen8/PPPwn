#!/bin/bash

mkdir onecloud-build
cd onecloud-build

cmake -DCMAKE_BUILD_TYPE=MinSizeRel -DZIG_TARGET=arm-linux-musleabi -DUSE_SYSTEM_PCAP=OFF -DZIG_COMPILE_OPTION='-mcpu=mpcorenovfp' ../
cmake --build . -t pppwn -- -j 32

llvm-strip pppwn
#upx --lzma pppwn

