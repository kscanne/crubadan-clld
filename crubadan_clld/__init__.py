from clld.web.app import menu_item, get_configurator
from clld.web.datatables.base import DataTable
from functools import partial

# we must make sure custom models are known at database initialization!
from crubadan_clld import models
from crubadan_clld import interfaces


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    config = get_configurator('crubadan_clld', settings=settings)
    config.include('crubadan_clld.datatables')
    config.include('crubadan_clld.adapters')


    config.register_resource(
        'writingsystem',
        models.WritingSystem,
        interfaces.IWritingSystem,
        with_index=True,
    )

    # config.register_resource(
    #     'writingsystem_files',
    #     models.WritingSystem_files,
    #     interfaces.IWritingSystem_files,
    #     with_index=True,
    # )

    config.register_menu(
        ('dataset', partial(menu_item, 'dataset', label='Home')),
        ('writingsystems', partial(menu_item, 'writingsystems',
                                    label='Writing Systems')),
        # ('writingsystem_filess', partial(menu_item, 'writingsystem_filess',
        #                                  label='Writing System Files')),
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
