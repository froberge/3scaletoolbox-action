#!/bin/sh

echo "Upldoate the API into 3scale"

executeLine="https://"+$1+"@"+ $2 $3

if [ ! -z "$4" ]
else 
    executeline+=" --default-credentials-userkey " +  $4
fi

if [ ! -z "$5" ]
else
    executeline+="--override-private-base-url=" + $5
fi


if [ ! -z "$6" ]
else
    executeline+="--override-public-basepath=" + $6
fi

echo $executeParam

3scale import openapi -d $executeParam



