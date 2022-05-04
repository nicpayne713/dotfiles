# pylint: disable=C0111
from qutebrowser.config.config import ConfigContainer
from qutebrowser.config.configfiles import ConfigAPI

config: ConfigAPI = config  # noqa: F821 pylint: disable=E0602,C0103
c: ConfigContainer = c  # noqa: F821 pylint: disable=E0602,C0103

config.load_autoconfig()
config.source("nord-qutebrowser.py")
