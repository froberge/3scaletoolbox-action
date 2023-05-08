#!/bin/sh

echo "Upldoate the API into 3scale"

executeLine="https://$1@$2 $3"

if [ ! -z "$4" ]
then 
    executeLine="$executeLine --default-credentials-userkey $4"
fi

if [ ! -z "$5" ]
then
    executeLine="$executeLine --override-private-base-url=$5"
fi


if [ ! -z "$6" ]
then
    executeLine="$executeLine --override-public-basepath=$6"
fi

echo $executeLine

3scale import openapi -d $executeLine



