#!/bin/bash

param="-b -D 21"

if [ "$LOCALADDR" ]; then 
    param="$param -q $LOCALADDR"
fi

param="$param $FTPSERVER"

/usr/local/sbin/ftp.proxy $param
wait $!
