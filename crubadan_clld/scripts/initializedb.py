from __future__ import unicode_literals
import sys

from clld.scripts.util import initializedb, Data
from clld.db.meta import DBSession
from clld.db.models import common

import crubadan_clld
from crubadan_clld import models

import os
import codecs

rootDataDir = '/data/crubadan'



def fillTable(dbsession):
    langs = os.listdir(rootDataDir)
    c = 1
    for lang in langs:
        fname = rootDataDir + '/' + lang + '/' + 'EOLAS'
        if (os.path.isfile(fname)):
            f = codecs.open(fname, encoding='utf-8')
            dic = {}
    
            for line in f:
                parseAdd(line,dic)
    
            dbsession.add(models.WritingSystem(
                id = lang,
                # jsondata = dic,
                name = dic[u'name_english'],
                description = dic[u'classification'],
                
                eng_name = dic[u'name_english'],
                native_name = dic[u'name_native'],
                bcp47 = lang,
                iso6393 = dic[u'ISO_639-3'],
                country = dic[u'country'],
                script = dic[u'script'],
                parent_ws = dic[u'parent'],
                child_ws = dic[u'children'],
                ling_classification = dic[u'classification'],
                ethnologue_name = dic[u'ethnologue'],
                glottolog_name = dic[u'glottolog'],
            ))
    
            print 'Added ' + lang + ' ...'
            c += 1

def parseAdd(line,dic):
    if (line[0] != u'#'):
        (key,d,value) = line.partition(u' ')
        if (value == u"XXX\n"):
            dic[key] = u"(Unknown)\n"
        elif ((value == u"none\n") or (value == u"\n")):
            dic[key] = u"None\n"
        else:
            # print '[' + key + '] [' + value + ']'
            dic[key] = value

def main(args):
    data = Data()

    dataset = common.Dataset(id=crubadan_clld.__name__, domain='crubadan_clld.clld.org')
    DBSession.add(dataset)

    fillTable(DBSession)

    # DBSession.add(models.WritingSystem(
    #     id=1,
    #     name='test_entry',
    #     description='hello testing',
    #     eng_name='Abau',
    #     bcp47='aau',
    #     iso6393='aau',
    #     country='Papua New Guinea',
    #     script='Latin',
    # ))

    # DBSession.commit()


def prime_cache(args):
    """If data needs to be denormalized for lookup, do that here.
    This procedure should be separate from the db initialization, because
    it will have to be run periodiucally whenever data has been updated.
    """


if __name__ == '__main__':
    initializedb(create=main, prime_cache=prime_cache)
    sys.exit(0)
