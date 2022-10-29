#!/usr/bin/env bash

set -e

HOMEDIR=home

sudo apt-get install fish bat fd-find

find ${HOMEDIR} -type f | while read -r srcpath
do
    dstpath=$(echo "${srcpath}" | sed "s|${HOMEDIR}|${HOME}|")

    mkdir -pv "$(dirname "${dstpath}")"
    ln -fsv "$(pwd)/${srcpath}" "${dstpath}"
done

