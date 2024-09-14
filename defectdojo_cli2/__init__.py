from .util import Util
from .findings import Findings
from .engagements import Engagements
from .tests import Tests
from .Announcements import Announcements
import pkg_resources  # part of setuptools

__version__ = pkg_resources.get_distribution("defectdojo_cli2").version
