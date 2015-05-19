from clld.web.app import get_configurator

# we must make sure custom models are known at database initialization!
from crubadan_clld import models


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    config = get_configurator('crubadan_clld', settings=settings)
    config.include('crubadan_clld.datatables')
    config.include('crubadan_clld.adapters')
    return config.make_wsgi_app()
