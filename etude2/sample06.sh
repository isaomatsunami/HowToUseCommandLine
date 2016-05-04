#!/bin/bash

cat test.txt
exitstatus=$?
if [ $exitstatus -eq 0 ]
then
echo ファイルがありました
else
echo ファイルがありません！
fi