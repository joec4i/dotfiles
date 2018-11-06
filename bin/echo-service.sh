#!/bin/bash

if [ "$1" == "" ]; then
    echo "Usage: $0 port_number"
    exit
fi

echo "Starting echo service on port $1"

socat -v tcp-l:$1,fork exec:"/bin/cat"
