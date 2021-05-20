#!/usr/bin/env bash


PROCESS='Arq'

if pgrep -xq -- "${PROCESS}"; then
    echo running
else
    echo not running
fi

exit 0
#Checks for Arq Agent ONLY