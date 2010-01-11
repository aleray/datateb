#!/usr/bin/env python
# encoding: utf-8
"""
script.py

Copyright (C) 2008-2009 Alexandre Leray - http://www.alexandreleray.com/

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
"""

import sys
import os
import time
from threading import Thread

from AppKit import NSSound
from appscript import *
 
class Sound:
    """
    Play a sound
    """
    def __init__(self, file):
        self._sound = NSSound.alloc()
        self._sound.initWithContentsOfFile_byReference_(file, True)
    def play(self): self._sound.play()
    def stop(self): self._sound.stop()
    def is_playing(self): return self._sound.isPlaying()

class Attracted(Thread):
    """
    Represent an attracted icon/file
    """
    target = app('Finder').desktop.items[its.name=='Magnet.app'].get()[0]
    targetX, targetY = target.desktop_position.get()
    targetX = round(targetX)
    targetY = round(targetY)
    def run(self):
        print self
        self.X += (self.targetX-self.X)/self.i
        self.Y += (self.targetY-self.Y)/self.i
        self.item.desktop_position.set([self.X, self.Y])
        if round(self.X) == self.targetX and round(self.Y) == self.targetY:
            self.item.delete()
        else:
            # time.sleep(0.1)
            self.i = self.i/self.friction
            self.run()
        pass
    def __init__(self, item):
        Thread.__init__(self)
        self.friction = 1.1
        self.i = 3000
        self.item = item
        self.X, self.Y = self.item.desktop_position.get()

def main():
    """
    Main routine
    """
    # Play a magnetic sound during the process
    dirname = os.path.abspath(os.path.dirname(__file__))
    sndfile = os.path.join(dirname, 'electricity.wav')
    snd = Sound(sndfile)
    snd.play()

    # Get all closed format files on the desktop and start the process of attraction
    extensions = ['doc', 'ppt', 'xls']
    items = []
    for extension in extensions:
        for item in app('Finder').desktop.items[its.name_extension==extension].get():
            Attracted(item).start()

if __name__ == '__main__':
	main()

