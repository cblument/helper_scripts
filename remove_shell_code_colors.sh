#!/usr/bin/env bash

if [ $# -ne 1 ]; then
        echo "$0 takes a single argument of a filename" >&2
        exit 1
fi

if [ ! -f $1 ] || [ ! -r $1 ]; then
        echo "Could not read file $1" >&2
        exit 1
fi

sed 's/\x1b\[[0-9;]*m//g' $1
