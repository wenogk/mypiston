#!/usr/bin/env bash

# Put instructions to build your package in here
[[ -d "bin" ]] && exit 0
PREFIX=$(realpath $(dirname $0))

mkdir -p build obj

cd build

curl "https://ftp.gnu.org/gnu/gcc/gcc-10.2.0/gcc-10.2.0.tar.gz" -o gcc.tar.gz

tar xzf gcc.tar.gz --strip-components=1

./contrib/download_prerequisites

cd ../obj

# Download and install json library
mkdir -p $PREFIX/include
curl -L "https://github.com/Tencent/rapidjson/archive/refs/tags/v1.1.0.tar.gz" -o rapidjson.tar.gz
tar xzf rapidjson.tar.gz --strip-components=1 -C $PREFIX/include rapidjson-1.1.0/include/rapidjson
rm rapidjson.tar.gz

# === autoconf based === 
../build/configure --prefix "$PREFIX" --enable-languages=c++ --disable-multilib --disable-bootstrap

make -j$(nproc)
make install -j$(nproc)
cd ../
rm -rf build obj

