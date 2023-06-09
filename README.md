# poco
POCO docker container. It builds POCO include files and libs for 4 platforms (armeabi-v7a, arm64-v8a, x86, x86_64) and stores it in share folder. For more information visit https://collaboraonline.github.io/post/build-code-android/.


## clone POCO repository
```
git clone --branch poco-1.10.1 https://github.com/pocoproject/poco.git share/poco-android
```

## build docker image
```
$ ./build.sh
```

## run container 
```
$ ./start.sh
```

## run install script inside container
```
# ./install-x86.sh
```

