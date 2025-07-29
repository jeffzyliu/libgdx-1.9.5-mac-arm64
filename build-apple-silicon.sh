#!/bin/sh

mkdir -p bin
DIR=$(pwd)

cd gdx/jni
pwd
ant -f build-macosx-arm.xml clean
ant -f build-macosx-arm.xml
cp ../libs/macosx64/*.dylib $DIR/bin
cd $DIR

cd extensions/gdx-freetype/jni
pwd
ant -f build-macosx-arm.xml clean
ant -f build-macosx-arm.xml
cp ../libs/macosx64/*.dylib $DIR/bin
cd $DIR

cd extensions/gdx-controllers/gdx-controllers-desktop/jni
pwd
ant -f build-macosx-arm.xml clean
ant -f build-macosx-arm.xml
cp ../libs/macosx64/*.dylib $DIR/bin
cd $DIR
