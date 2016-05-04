#!/bin/sh

# 対象ファイルをすべて処理する雛形
# findで対象を絞り込む

for this_path in `find . -name "*.txt"`
do
	echo $this_path
	# パスの分解
	string_filename=${this_path##*/}
	string_filename_without_extension=${string_filename%.*}
	string_path=${this_path%/*}
	string_extension=${this_path##*.}

	echo ${string_filename}
	echo ${string_filename_without_extension}
	echo ${string_path}
	echo ${string_extension}
	# 何か処理する
done