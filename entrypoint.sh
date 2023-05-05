#!/bin/sh

echo "the token"
echo -n $1 | base64 --decode

echo "the domain"
echo -n $2 | base64 --decode

echo "the file: $3 "

3scale import openapi -d https://$1@$2 $3