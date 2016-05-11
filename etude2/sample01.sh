#!/bin/bash

hour=`date +%H`
# 以下のように書いても同じ
# hour=$(date +%H)

if [ "$hour" -lt 12 ]
then
echo "今は午前です"
else
echo "今は午後です"
fi
