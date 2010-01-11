#!/usr/local/bin/python
# -*- coding: utf-8 -*-

from AppKit import NSSound
from appscript import *
# from mactypes import Alias
# import osax
# import sys
import time
import os, sys
# import os, sys
# import EasyDialogs

# Play a sound
snd = "electricity.wav"
sound = NSSound.alloc()
sound.initWithContentsOfFile_byReference_('/Users/aleray/Desktop/Magnetize.app/Contents/Resources/electricity.wav', True)
#sound.Loops(100)
sound.play()

fi = app('Finder')
droplet = fi.desktop.items[its.name=='Magnetize.app'].get()[0]
dropletX, dropletY = droplet.desktop_position.get()
items = fi.desktop.items[its.name_extension=='doc'].get()
items += fi.desktop.items[its.name_extension=='ppt'].get()
items += fi.desktop.items[its.name_extension=='dwf'].get()
items += fi.desktop.items[its.name_extension=='xls'].get()

# for i in range(100):
# 	for item in items:
# 		itemX, itemY = item.desktop_position.get()
# 		newX = itemX+((dropletX-itemX)*30/100)
# 		print newX
# 		newY = itemY+((dropletY-itemY)*30/100)
# 		print newY
# 		item.desktop_position.set([newX, newY])
# 		time.sleep(0.01)

friction = 1.1
i = 3000

def move(items):
	global i
	global friction
	global sound
	for item in items:
		itemX, itemY = item.desktop_position.get()
		itemX += (dropletX-itemX)/i
		itemX = round(itemX)
		itemY += (dropletY-itemY)/i
		itemY = round(itemY)
		item.desktop_position.set([itemX, itemY])
		if itemX==dropletX:
			items.remove(item)
			print item, "removed"
			item.delete()
		time.sleep(0.01)
	if len(items)>=1:
		i = i/friction
		move(items)
	# else:
	# 	sound.stop()
		
move(items)
# 
# while len(items)>=1:
# 	for item in items:
# 		itemX, itemY = item.desktop_position.get()
# 		if abs(itemX)<=dropletX+3:
# 			items.remove(item)
# 			print item, "removed"
# 		itemX += (dropletX-itemX)/i
# 		itemX = round(itemX)
# 		itemY += (dropletY-itemY)/i
# 		itemY = round(itemY)
# 		print itemX
# 		item.desktop_position.set([itemX, itemY])
# 		time.sleep(0.1)
# 	i = i/friction

# while len(items)>=1:
# 	print "1"
# 	for item in items:
# 		itemX, itemY = item.desktop_position.get()
# 		if itemX==dropletX:
# 			items.remove(item)
# 			print item, "removed"
# 			item.delete()
# 		newX = itemX+((dropletX-itemX)/10)
# 		newY = itemY+((dropletY-itemY)/10)
# 		item.desktop_position.set([newX, newY])
# 		time.sleep(0.1)

# 
# os.system("killall mplayer")