#!/bin/bash

# zipファイルのパスワードを探せ
# 簡単なパスワード付きzipファイルを解凍すると

# $ unzip -P 1111 test.zip
# Archive:  test.zip
# replace test.txt? [y]es, [n]o, [A]ll, [N]one, [r]ename: y
#  extracting: test.txt                
# $ echo $?   // 直近の終了コード
# 0
# $ unzip -P 1112 test.zip
# Archive:  test.zip
#    skipping: test.txt                incorrect password
# $ echo $?
# 82

# どうやらパスワードが違うと終了コードが違うようだ

# unzip -Z はパスワードなしで中身が分かる。
# http://www.info-zip.org/FAQ.html#error-codes

# コマンドラインでループを作る標準的な方法は以下のとおり
# for i in `seq 10`; do
#  echo $i
# done

# seqコマンドには、0詰めするwオプション、フォーマットするfオプションがある
# for i in `seq -w 9999`; do
#  echo $i
# done

for i in `seq -w 9999`; do
  # oオプションはプロンプト省略
  unzip -P $i -o financial_report.zip
  # 直後に$?で終了コードを取得しておく
  exitstatus=$?
  echo "試みたpassword" $i
  if [ $exitstatus -eq 0 ]; then
    echo "解凍に成功しました：" $i
    break
  fi
  echo "失敗しました：" $i $exitstatus
done
