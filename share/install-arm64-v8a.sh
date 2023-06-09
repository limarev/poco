#!/bin/bash


cd poco-android \
&& git apply /share/arm64-v8a.patch \
&& ./configure --prefix=/share/arm64-v8a --config=Android --no-samples --no-tests --omit=Crypto,NetSSL_OpenSSL,Zip,Data,Data/SQLite,Data/ODBC,Data/MySQL,MongoDB,PDF,CppParser,PageCompiler,JWT \
&& make -j8 ANDROID_ABI=arm64-v8a CC=aarch64-linux-android21-clang CXX=aarch64-linux-android21-clang++ SYSLIBS=-static-libstdc++ \
&& make -j8 ANDROID_ABI=arm64-v8a CC=aarch64-linux-android21-clang CXX=aarch64-linux-android21-clang++ SYSLIBS=-static-libstdc++ install \
&& git restore .