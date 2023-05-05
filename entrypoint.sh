#!/bin/sh

echo "Upldoate the API into 3scale"

3scale import openapi -d https://$1@$2 $3