#!/bin/sh

echo " the token: $1 "
echo " the url: #2 "
echo "the file: #3 "

3scale import openapi -d https://$1@$2 $3