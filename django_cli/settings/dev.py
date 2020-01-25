from .base import *

DEBUG = True

ALLOWED_HOSTS = ['*']

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}

if os.path.isfile(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'private.py')):
    from .private import *
