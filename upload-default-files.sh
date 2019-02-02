#!/bin/bash
STAGEDIR=stage/*

for f in $STAGEDIR
do
  ampy --port /dev/ttyUSB0 put ${f}
done
echo $(ampy --port /dev/ttyUSB0 ls)
