#!/usr/bin/python

import logging
from ConfigParser import SafeConfigParser
import tpipy.terrariumlist

terrariums = tpipy.terrariumlist.list_terrariums()


#logging.basicConfig(level=logging.INFO)
logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)
handler = logging.FileHandler('../data/tpi.log')
#handler.setLevel(logging.INFO)
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
handler.setFormatter(formatter)
logger.addHandler(handler)

#logger.error('Test Fehler')

for terra in terrariums:
    logger.debug('Processing %s', terra)

    parser = SafeConfigParser()
    parser.read('../config/' + terra)

    loggerTerra = logging.getLogger(terra)
    loggerTerra.addHandler(logging.FileHandler('../data/'+terra+'_temp'))

    for section_name in parser.sections():
        print 'Section:', section_name
        print '  Options:', parser.options(section_name)
        for name, value in parser.items(section_name):
            print '  %s = %s' % (name, value)
        print
