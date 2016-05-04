#!/bin/bash

# 適当なファイルの冒頭2行目までを出力する
head -n 2 census/tblT000572C01236.txt > all.txt

for file in `find census`
do
# 1行目から2行目までは出力しない。>>で追記する
sed 1,2d $file >> all.txt
done
# shift-jisからutf8に文字コードを変換する
nkf -Sw all.txt > all_UTF8.txt
