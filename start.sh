#!/bin/sh

if [ -z "$SHELLED" ]; then
    export SHELLED=1
    exec "$SHELL" "$0" "$@"
fi

nohup fluent-bit -c fluent-bit.conf > /dev/null 2>&1 &
