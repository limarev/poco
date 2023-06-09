#!/bin/bash


cd poco-android && ./configure --prefix=/share/x86 --config=Android --no-samples --no-tests --omit=Crypto,NetSSL_OpenSSL,Zip,Data,Data/SQLite,Data/ODBC,Data/MySQL,MongoDB,PDF,CppParser,PageCompiler,JWT \
&& make -j8 ANDROID_ABI=x86 CC=i686-linux-android21-clang CXX=i686-linux-android21-clang++ SYSLIBS=-static-libstdc++ \
&& make -j8 ANDROID_ABI=x86 CC=i686-linux-android21-clang CXX=i686-linux-android21-clang++ SYSLIBS=-static-libstdc++ install