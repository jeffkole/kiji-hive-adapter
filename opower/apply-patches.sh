#!/bin/sh -ex

if [ $# != 1 ]; then
    echo "usage: $0 <patch-dir>"
    exit 1
fi

PATCH_DIR=$1; shift

for PATCH in `ls -1 $PATCH_DIR/* | sort`; do
    git apply $PATCH
done
