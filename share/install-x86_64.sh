#!/bin/bash


cd poco-android \
&& git apply /share/x86_64.patch \
&& ./configure --prefix=/share/x86_64 --config=Android --no-samples --no-tests --omit=Crypto,NetSSL_OpenSSL,Zip,Data,Data/SQLite,Data/ODBC,Data/MySQL,MongoDB,PDF,CppParser,PageCompiler,JWT \
&& make -j8 ANDROID_ABI=x86_64 CC=x86_64-linux-android21-clang CXX=x86_64-linux-android21-clang++ SYSLIBS=-static-libstdc++ \
&& make -j8 ANDROID_ABI=x86_64 CC=x86_64-linux-android21-clang CXX=x86_64-linux-android21-clang++ SYSLIBS=-static-libstdc++ install \
&& git restore .