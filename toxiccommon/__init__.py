# -*- coding: utf-8 -*-

from .coordination import ToxicZKClient
from .interfaces import BaseInterface

__version__ = '0.10.0'


async def common_setup(settings):
    ToxicZKClient.settings = settings
    BaseInterface.settings = settings

    from .exchanges import conn, declare
    await conn.connect(**settings.RABBITMQ_CONNECTION)
    await declare()
