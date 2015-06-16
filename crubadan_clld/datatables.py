from clld.web.datatables.base import (
    Col, LinkCol, DataTable, filter_number, LinkToMapCol,
)

from crubadan_clld.models import WritingSystem
        

class WritingSystems(DataTable):
    def __init__(self, *args, **kw):
        super(WritingSystems, self).__init__(*args, **kw)

    def col_defs(self):
        return [
            LinkCol(self, 'eng_name', sTitle='Name (English)'),
            Col(self, 'bcp47', sTitle='BCP-47 Code'),
            Col(self, 'iso6393', sTitle='ISO-639-3 Code'),
            Col(self, 'country', sTitle='Country'),
            Col(self, 'script', sTitle='Script'),
        ]

    def get_options(self):
        return {"iDisplayLength": 50}

def includeme(config):
    # pass
    config.register_datatable('writingsystems', WritingSystems)
