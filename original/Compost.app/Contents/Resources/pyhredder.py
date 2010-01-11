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


def wrap(text, width):
	"""
	A word-wrap function that preserves existing line breaks
	and most spaces in the text. Expects that existing line
	breaks are posix newlines (\n).
	"""
	return reduce(
		lambda line,
		word,
		width=width: '%s%s%s' % (
			line,
			' \n'[(len(line)-line.rfind('\n')-1 + len(word.split('\n',1)[0]) >= width)],
			word),
		text.split(' ')
	)


def main():
		
	# Play a sound
	snd = "paper_shredder.wav"
	#os.system("/Users/aleray//bin/mplayer %s < /dev/tty1 >| ~/error.log" % snd)
	#os.system("/Users/aleray/bin/mplayer %s >| ~/error.log" % snd)
	#os.system("/Applications/VLC.app/Contents/MacOS/VLC -I ncurses %s &" % snd)
	sound = NSSound.alloc()
	sound.initWithContentsOfFile_byReference_('/Users/aleray/Desktop/Paper Shredder.app/Contents/Resources/paper_shredder.wav', True)
	sound.play()
	
	meter = EasyDialogs.ProgressBar('Shredding your file...',
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
	
	
	# Nombre de caractères par ligne du fichier original, Nombre de caractère pas ligne des fichiers générés
	nc = 40
	nf = 5
	
	# Récupère le premier argument et le formate
	f = open(sys.argv[1],'r')
	g = f.read()
	f.close()
	g = wrap(g,nc)
	
	# À revoir car supprime n'importe quel type de fichier
	cmd = "rm %s" % sys.argv[1]
	os.system(cmd)
	
	# Récupère le chemin relatif de l'argument sans son extension
	basePath = os.path.splitext(sys.argv[1])[0]
	fileName = os.path.basename(sys.argv[1]).split(".")[0]
	fileExt = os.path.basename(sys.argv[1]).split(".")[1]
	destinationPath = "/Users/aleray/Recycled/Paper Shredder/"
	
	# liste des fichiers généré
	createdDocs = []
	
	# Découpe ligne par ligne le fichier original et cré des "bandes"
	for i in range(nc/nf):
		newContent=""
		for line in g.split("\n"):
		    newContent += line[i*nf:(i*nf)+nf]+"\n"
		newPath = '%s%s_%s.%s' % (destinationPath, fileName, i, fileExt)
		createdDocs.append(newPath)
		newFile = open(newPath, 'w')
		newFile.write(newContent)
	
	te = app('TextEdit')
	te.activate()
	
	for i in range(len(createdDocs)):
		te.open(Alias(createdDocs[i]))
		te.windows[0].bounds.set([100+35*i, 100, 200+35*i, 800])
		
	# fait une petite pause avant de tout refermer
	time.sleep(2)
	
	for window in te.windows.get()[::-1]:
		window.close()
	
	# print EasyDialogs.Message('Your file have been succesfully destructed', ok='Continue')

if __name__ == '__main__':
    main()
