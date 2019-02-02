#!/bin/bash
IP=$1 #'172.31.98.170'

sh ./install-micropython.sh
sh ./stage-files.sh $1
sleep 10
sh ./upload-default-files.sh
sh ./unstage-files.sh
