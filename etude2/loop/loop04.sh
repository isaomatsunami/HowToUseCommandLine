#!/bin/bash

# コマンドでリストを作る場合
# バッククオートか、$()を使う
# for i in `seq 0 10`

for i in $(seq 0 10)
do
    echo $i
done