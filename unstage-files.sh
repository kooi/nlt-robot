#!/bin/bash
STAGEDIR=stage/*

for f in $STAGEDIR
do
  echo "Processing $f file..."
  rm ${f}
done
