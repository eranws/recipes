import cv2
fn="IMG_20160411_131757"
ext=".jpg"
inn=cv2.imread(fn + ext)
w=1500
h=w
x=750
y=100

out=inn[x:x+w,y:y+h]

# rotate cw
out=cv2.transpose(out)
out=cv2.flip(out,flipCode=1)

cv2.imwrite(fn +"-crop.jpg", out)
