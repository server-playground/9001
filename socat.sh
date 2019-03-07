#!/usr/bin/env bash

PORT="9001"
HELLOWORLD="hello world"

echo "server is running on \"http://localhost:$PORT/\""

socat -d -d -d tcp-l:$PORT,reuseaddr,fork system:"echo \"HTTP/1.1 200 OK\"; echo \"\"; echo $HELLOWORLD"
