#!/bin/bash
FILES="$(ampy --port /dev/ttyUSB0 ls)"
echo "${FILES}"

for f in $FILES
do
  echo "deleting... $f"
  ampy --port /dev/ttyUSB0 rm ${f}
done
echo $(ampy --port /dev/ttyUSB0 rm ${f})
