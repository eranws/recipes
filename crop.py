#!/usr/bin/python

import sys
import cv2

def crop(fn):
    inn=cv2.imread(fn)
    w=1500
    h=w
    x=750
    y=100

    out=inn[x:x+w,y:y+h]

    # rotate cw
    out=cv2.transpose(out)
    out=cv2.flip(out,flipCode=1)

    out=cv2.resize(out, (0,0), out, 0.5, 0.5)
    
    
    cv2.imwrite(fn, out)

def main(argv):
    for s in argv:
        crop(s)

if __name__ == "__main__":
   main(sys.argv[1:])