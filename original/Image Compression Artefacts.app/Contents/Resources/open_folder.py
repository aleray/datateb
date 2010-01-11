#! /usr/bin/env python

from appscript import *
from mactypes import Alias

fi = app('Finder')
fi.activate()

fi.open(Alias("/Users/aleray/Recycled/Image Compression 2"))

fi.Finder_windows()[0].current_view.set(k.icon_view)