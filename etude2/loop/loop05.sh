#!/bin/bash

# 別のファイルにリストがある場合
for i in $(cat list.txt)
do
    echo $i
done