#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage: ./lyota.sh <target-files.zip> <output-ota.zip>"
	exit 1
fi

export PATH=$PATH:host/linux-x86/bin/
export LD_PATH=$LD_PATH:host/linux-x86/bin/lib/:host/linux-x86/lib/:host/linux-x86/lib64
export OUT_DIR_COMMON_BASE=`pwd`/../
python2 python/ota_from_target_files -v -k testkey $1 $2
