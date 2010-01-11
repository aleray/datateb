#!/usr/local/bin/python
# -*- coding: utf-8 -*-

from AppKit import NSSound
from appscript import *
from mactypes import Alias
import osax
import sys
import time
import os, sys
import EasyDialogs
import Image

def main():
	
	# Play a sound
	snd = "paper_shredder.wav"
	#sound = NSSound.alloc()
	#sound.initWithContentsOfFile_byReference_('/Users/aleray/Desktop/Paper Shredder.app/Contents/Resources/paper_shredder.wav', True)
	#sound.play()
	
	meter = EasyDialogs.ProgressBar('Compressing your images...',
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
	
	for infile in sys.argv[1:]:
		fileName = os.path.basename(sys.argv[1]).split(".")[0]
		fileExt = os.path.basename(sys.argv[1]).split(".")[1]
		outfile = "/Users/aleray/Recycled/Image Compression 2/%s.compressed.jpg" % fileName
		if infile != outfile:
			try:
				im = Image.open(infile)
				im.save(outfile, "JPEG", quality=1)
				im = Image.open(outfile)
				im.show()				
			except IOError:
				print "cannot create thumbnail for", infile
	
if __name__ == '__main__':
    main()
