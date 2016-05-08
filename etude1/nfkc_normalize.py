#!/usr/bin/python
# -*- coding: utf-8 -*-

"""
pythonライブラリによる、nfkc標準化
"""

import sys, argparse, codecs
from unicodedata import normalize

reload(sys)
sys.setdefaultencoding("utf-8")

def main():
  parser = argparse.ArgumentParser()
  parser.add_argument("-inputfile", help="input text file")
  args = parser.parse_args()
  if args.inputfile:
    data_in = codecs.open(args.inputfile, "r", "utf-8")
  else:
    data_in = sys.stdin
  unicode_Line = data_in.readline()
  while unicode_Line:
    # print unicode_Line.encode("utf-8")
    print normalize('NFKC', unicode_Line)
    unicode_Line = data_in.readline()

if __name__ == '__main__':
	main()
