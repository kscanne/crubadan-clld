import codecs
import csv

csvfile = codecs.open("/data/crubadan-clld/glottolog/languoid.csv", encoding='ascii', errors='ignore')

csvdata = csv.reader(csvfile, delimiter=',', quotechar='"')

coords = {}

# NOTE: These indexes are likely to change with new version of Glottolog!
#
# The version for which these are valid is 2.5
#
langIndex =  7 # labeled "id" in csv file
latIndex  =  9 # labeled "latitude" in csv file
longIndex = 11 # labeled "longitude" in csv file

for record in csvdata:
    lang = record[langIndex]
    latitude = record[latIndex]
    longitude = record[longIndex]
    if (lang != '' and latitude != '' and longitude != ''):
        coords[codecs.encode(lang, 'utf-8') + u'\n'] = (latitude, longitude)
