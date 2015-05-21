from clld.web.app import menu_item, get_configurator
from functools import partial

# we must make sure custom models are known at database initialization!
from crubadan_clld import models


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    config = get_configurator('crubadan_clld', settings=settings)
    config.include('crubadan_clld.datatables')
    config.include('crubadan_clld.adapters')

    config.register_menu(
        ('dataset', partial(menu_item, 'dataset', label='Home')),
        #('writing_systems', partial(menu_item, 'writing_systems',
        #                            label='Writing Systems')),
        ('about', partial(menu_item, 'about', label='About')),
        ('apps', partial(menu_item, 'apps', label='Applications')),
        ('acks', partial(menu_item, 'acks', label='Acknowledgements'))
    )

    config.add_route_and_view(
        'apps',
        '/applications',
        views.apps,
        renderer='apps.mako'
    )

    config.add_route_and_view(
        'acks',
        '/acknowldegments',
        views.acks,
        renderer='acks.mako'
    )


    return config.make_wsgi_app()
