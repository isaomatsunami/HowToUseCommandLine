#!/bin/bash

# whileによるループ
# 抜け出す判定がないと無限ループに陥るので注意

# []かtestをつかって判定する
# -ltはless than, -eqはequals、-gtはgreater thanの意味
# 文字列比較には=と!=が使える

# $(())で再代入し、数を増加させる

i=0
while [ $i -lt 100 ]
do
    echo $i
    # 以下の３行は同じ意味
    i=`expr $i + 1`
    # i=$((i+1))
    # (( i++ ))
done