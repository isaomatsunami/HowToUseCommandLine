#!/bin/bash

# 配列によるリスト
# bashの配列は()で定義し、[@]か[*]でアクセスする
array=(0 1 2 3 4 5 6 7 8 9)

for i in ${array[@]}
do
    echo $i
done