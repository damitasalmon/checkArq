#!/bin/bash
SERVICE='Arq'

if ps ax | grep -v grep | grep "${SERVICE}" &> /dev/null; then
    echo running
else
    echo not running
fi

#Checks for any and ALL Arq processes - ArqAgent and ArqMonitor
#if one or the other is running it will return Running
 
