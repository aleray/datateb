import threading

class MyThread ( threading.Thread ):

   def run ( self ):

      print 'You called my start method, yeah.'
      print 'Were you expecting something amazing?'

MyThread().start()