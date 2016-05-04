#!/usr/bin/env python
# -*- coding: utf-8 -*-

import numpy as np
import sys, argparse, json, math
import cv2
 
face_cascade = cv2.CascadeClassifier('openCV/haarcascade_frontalface_default.xml')

def main():
  # 引数の設定
  parser = argparse.ArgumentParser()
  parser.add_argument("inputfile", help="image file")
  parser.add_argument("outputfile", help="output file")
  parser.add_argument("-height", help="height(default=200px)", type=int, default=200)
  parser.add_argument("-width",  help="width(default=120px)",  type=int, default=120)
  parser.add_argument("-verbose", help="verbose mode (default=false)", action="store_true")
  args = parser.parse_args()

  if args.verbose:
    print args.inputfile, args.outputfile

  margin_left = margin_right = 0.2
  margin_top = 0.2
  margin_bottom = 0.4

  img = cv2.imread(args.inputfile)
  gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
  faces = face_cascade.detectMultiScale(gray, 1.3, 5)
  for i, (x,y,w,h) in enumerate(faces):
    # 顔が見つかった場合
    left, right = x - margin_left * w, x + (1.0+margin_right) * w
    top, bottom = y - margin_top * h,  y + (1.0+margin_bottom) * h
    # 範囲がはみ出している場合は未完成
    print i, left, right, top, bottom
    clipped = img[top:bottom, left:right]
    cv2.imwrite(args.outputfile + "_" + str(i) + ".png", clipped)


if __name__ == "__main__":
  main()
  sys.exit(0)
