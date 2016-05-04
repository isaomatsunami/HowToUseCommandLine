#!/bin/bash

# 以下は同じ意味
hour=`date +%H`
hour=$(date +%H)

if [ "$hour" -lt 12 ]
then
echo "今は午前です"
else
echo "今は午後です"
fi
