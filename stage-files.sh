#!/bin/bash
FILES=default-code/*
STAGEDIR=stage
OLDIP='172.31.98.170'
NEWIP=$1

for f in $FILES
do
  echo "Processing $f file..."
  sed "s/${OLDIP}/${NEWIP}/g" $f > ${STAGEDIR}/$(basename ${f})
done
