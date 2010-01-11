#!/usr/local/bin/python
# -*- coding: utf-8 -*-

from AppKit import NSSound
from appscript import *
from mactypes import Alias
import osax
import time
import EasyDialogs
import os, sys
import Image
import random
import glob


def main():
	
	# Play a sound
	#snd = "paper_shredder.wav"
	#os.system("/Users/aleray//bin/mplayer %s < /dev/tty1 >| ~/error.log" % snd)
	#os.system("/Users/aleray/bin/mplayer %s >| ~/error.log" % snd)
	#os.system("/Applications/VLC.app/Contents/MacOS/VLC -I ncurses %s &" % snd)
	#sound = NSSound.alloc()
	#sound.initWithContentsOfFile_byReference_('/Users/aleray/Desktop/Paper Shredder.app/Contents/Resources/paper_shredder.wav', True)
	#sound.play()
	
	meter = EasyDialogs.ProgressBar('Recycling your pictures...',
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
	
	imagesSrc=glob.glob('/Users/aleray/Recycled/Images Recycle Bin/*.jpg')

	images=[]

	for i in imagesSrc:
		im = Image.open(i)
		x, y = im.size
		bla = [im, x, y]
		images.append(bla)

	print images


	finalX = 600
	finalY = 600

	newIm = Image.new("RGB", (finalX,finalY), "White")

	for i in range(10000):
		for i in images:
			newX = random.randint(0, i[1])
			newY = random.randint(0, i[2])
			patch = i[0].crop([newX,newY,newX+20,newY+20])
			newX = random.randint(0, finalX)
			newY = random.randint(0, finalY)
			newIm.paste(patch, (newX,newY))

	newIm.show()

	# print EasyDialogs.Message('Your file have been succesfully destructed', ok='Continue')

if __name__ == '__main__':
    main()
