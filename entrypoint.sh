#!/bin/sh

echo "Upldoate the API into 3scale"

if [ -z "$4" ]
then
    3scale import openapi -d https://$1@$2 $3 
else 
    3scale import openapi -d https://$1@$2 $3 --default-credentials-userkey $4
fi