import codecs
import csv

csvfile = codecs.open("/data/crubadan-clld/glottolog/languoid.csv", encoding='ascii', errors='ignore')

csvdata = csv.reader(csvfile, delimiter=',', quotechar='"')

coords = {}

for record in csvdata:
    lang = record[9]
    latitude = record[11]
    longitude = record[13]
    if (lang != '' and latitude != '' and longitude != ''):
        coords[codecs.encode(lang, 'utf-8') + u'\n'] = (latitude, longitude)
