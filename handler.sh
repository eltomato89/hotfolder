#!/bin/sh

echo "hello from handler.sh, file: $1"
cat $1
curl --silent -X POST -H "Content-Type: application/xml" -d @${1} https://postman-echo.com/post | jq

rm $1