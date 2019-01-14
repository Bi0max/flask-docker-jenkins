import sys
from unittest import TestCase


class TestApp(TestCase):
    def test_app_fail(self):
        s = str(sys.version)
        self.assertIn("3.6.8", s)

    def test_app_success(self):
        pass
