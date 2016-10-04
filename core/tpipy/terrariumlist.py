from os import listdir
from os.path import isfile, join

def list_terrariums():   
   confpath = "../config/"
   conffiles = [f for f in listdir(confpath) if isfile(join(confpath, f))]

   print "TERRARIUM LIST:"
   print "   ", conffiles
   
   return conffiles
