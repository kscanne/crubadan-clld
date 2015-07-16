from zope.interface import implementer
from sqlalchemy import (
    Column,
    String,
    Unicode,
    Integer,
    Boolean,
    ForeignKey,
    UniqueConstraint,
)
from sqlalchemy.orm import relationship, backref
from sqlalchemy.ext.declarative import declared_attr
from sqlalchemy.ext.hybrid import hybrid_property

from clld import interfaces
from clld.db.meta import Base, CustomModelMixin
from clld.db.models.common import (
    Language,
    IdNameDescriptionMixin,
    FilesMixin,
    HasFilesMixin,
)

from crubadan_clld.interfaces import (
    IWritingSystem,
)

import os

#-----------------------------------------------------------------------------
# specialized common mapper classes
#-----------------------------------------------------------------------------

@implementer(IWritingSystem)
class WritingSystem(CustomModelMixin, Language):
    pk = Column(String, ForeignKey('language.pk'), primary_key=True)
    eng_name = Column(String)
    native_name = Column(String)
    bcp47 = Column(String)
    iso6393 = Column(String)
    country = Column(String)
    script = Column(String)
    parent_ws = Column(String)
    child_ws = Column(String)
    ling_classification = Column(String)
    ethnologue_name = Column(String)
    glottolog_name = Column(String)
