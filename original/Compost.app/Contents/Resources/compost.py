#!/usr/bin/python
# -*- coding: utf-8 -*-

import os, sys
import time
from PIL import Image
from life import *
import random
import glob
import EasyDialogs

def bla(p, color):
	for i in range(len(list(p))):
		if i % 2:
			y = list(p)[i]
		else:
			x = list(p)[i]
			try:
				actualPix = pix[x,y]
				if color=="r":
					pix[x, y] = (255, actualPix[1], actualPix[2])
				if color=="g":
					pix[x, y] = (actualPix[0], 255, actualPix[2])
				if color=="b":
					pix[x, y] = (actualPix[0], actualPix[1], 255)
				pixCopy[x, y] = (0, 0, 0)
			except:
				print "negatif"
	return 0


#snd = "/Volumes/STOCK/Users/aleray/Travaux/PZI/not_from_scratch/sounds/3370__heatfuse__mosquito.mp3"
snd = "/Volumes/STOCK/Users/aleray/Travaux/PZI/not_from_scratch/sounds/piezorw1.wav"
os.system("mplayer -loop 1000 %s &" % snd)

meter = EasyDialogs.ProgressBar('Generating Life...',
                                maxval=100,
                                label='Starting',
                                )
for i in xrange(1, 101):
    phase = '%d %% Completed' % i
    print phase
    meter.label(phase)
    meter.inc()
    time.sleep(0.01)
print 'Done with loop'
time.sleep(1)

del meter
print 'The dialog should be gone now'

# thePatterns=glob.glob('patterns/*.txt')
# thePatterns+=glob.glob('patterns/*.lif')
# print thePatterns

im = Image.open(sys.argv[1])
x, y = im.size
pix = im.load()

# 
f=open('/Volumes/STOCK/Users/aleray/Travaux/PZI/not_from_scratch/scripts_recycle/patterns/pattern_01.txt', 'r')
p1 = pattern(f.read())
f.close()
p1 = p1 (random.randint(50,x-50),random.randint(50, y-50))
f=open('/Volumes/STOCK/Users/aleray/Travaux/PZI/not_from_scratch/scripts_recycle/patterns/pattern_02.txt', 'r')
p2 = pattern(f.read())
f.close()
p2 = p2 (random.randint(50,x-50),random.randint(50, y-50))
f=open('/Volumes/STOCK/Users/aleray/Travaux/PZI/not_from_scratch/scripts_recycle/patterns/pattern_03.txt', 'r')
p3 = pattern(f.read())
f.close()
p3 = p3 (random.randint(50,x-50),random.randint(50, y-50))
# 
# #old = p

# 
# # p4=[]
# # for i in range(50):
# # 	p4.append(random.randint(1,300))
# 
# # p4
# # p4 = p4 (100,100)
# 
for a in range(1000):
	imCopy = im.copy()
	pixCopy = imCopy.load()
	#
	bla(p1, "r")
	p1 = p1.evolve(1)
	bla(p2, "g")
	p2 = p2.evolve(1)
	bla(p3, "b")
	p3 = p3.evolve(1)
	
	# if a % 10 == 0:
	# 	imCopy.save("nature_composted_%s.jpg" % (a))
	if a % 10 == 0:
		imCopy.save("/Users/aleray/Recycled/Compost/composted.jpg")
# 		
os.system("killall mplayer")