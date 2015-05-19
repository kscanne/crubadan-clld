from clld.web.assets import environment
from path import path

import crubadan_clld


environment.append_path(
    path(crubadan_clld.__file__).dirname().joinpath('static'), url='/crubadan_clld:static/')
environment.load_path = list(reversed(environment.load_path))
