import os
from pyramid.response import FileResponse

def apps(request):
    return {}

def acks(request):
    return {}

def olac_xml(request):
    olac_file = os.path.join('/data/crubadan-clld/olac', 'olac.xml')
    return FileResponse(olac_file, request=request)
