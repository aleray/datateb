#! /usr/bin/env python

import os, sys
import Image
import EasyDialogs
import time

meter = EasyDialogs.ProgressBar('Trying to Move your Picture...',
                                maxval=100,
                                label='Starting',
                                )
for i in xrange(1, 101):
    phase = '%d %% Completed' % i
    print phase
    meter.label(phase)
    meter.inc()
    # time.sleep(0.0005)
print 'Done with loop'
time.sleep(1)

del meter
print 'The dialog should be gone now'

error = 0

for infile in sys.argv[1:]:
	try:
		im = Image.open(infile)
		cmd = "mv %s /Users/aleray/Recycled/Images\ Recycle\ Bin/" % infile
		os.system(cmd)
	except IOError:
		error = 1
		print "Some of your files can't be added", infile

if error == 0:
	print EasyDialogs.Message('Your pictures have been succesfully moved to the Images Recycle Bin', ok='Continue')
else:
	print EasyDialogs.Message('Part and/or all of your files were not added.\nPlease drop only Images', ok='Continue')
	
