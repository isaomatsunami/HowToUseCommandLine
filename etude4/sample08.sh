#!/bin/bash
n=0
find ./test -type f -name '*.jpg' -or  -name '*.png' | while read filename
do
	n=`expr $n + 1`
	echo "found($n)  $filename"
	# サイズを変更し、PNG画像として保存する
	# convert -geometry 200x120 $filename ./test/${n}.png
	# サイズを強制する（縦横比率を維持しない）
	# convert -geometry 200!x120! $filename ./test/${n}.png
	python faceDetect.py -verbose -height 250 -width 180 $filename ./test/clipped_${n}
done
