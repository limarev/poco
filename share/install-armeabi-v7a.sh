#!/bin/bash


cd poco-android && ./configure --prefix=/share/armeabi-v7a --config=Android --no-samples --no-tests --omit=Crypto,NetSSL_OpenSSL,Zip,Data,Data/SQLite,Data/ODBC,Data/MySQL,MongoDB,PDF,CppParser,PageCompiler,JWT \
&& make -j8 ANDROID_ABI=armeabi-v7a CC=armv7a-linux-androideabi21-clang CXX=armv7a-linux-androideabi21-clang++ SYSLIBS=-static-libstdc++ \
&& make -j8 ANDROID_ABI=armeabi-v7a CC=armv7a-linux-androideabi21-clang CXX=armv7a-linux-androideabi21-clang++ SYSLIBS=-static-libstdc++ install