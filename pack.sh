#!/bin/sh

build_darwin='GOOS=darwin GOARCH=amd64 go build -o bbb-record-size_darwin64'
build_linux='GOOS=linux GOARCH=amd64 go build -o bbb-record-size_linux64'
build_windows='GOOS=windows GOARCH=amd64 go build -o bbb-record-size_win64.exe'

pf=$1x

if [ $pf = darwinx ]
then
  echo "darwin building..."
  eval $build_darwin
elif [ $pf = linuxx ]
then
  echo "linux building..."
  eval $build_linux
elif [ $pf = windowsx ]
then
  echo "windows building..."
  eval $build_windows
else
  echo "darwin building..."
  eval $build_darwin
  echo "linux building..."
  eval $build_linux
  echo "windows building..."
  eval $build_windows
fi

echo "done"
