import os


def is_heroku():
    return bool(os.environ.get('HEROKU'))


def get_database_url(default=None):
    return os.environ.get('DATABASE_URL', default)


def get_port(default=None):
    return os.environ.get('PORT', default)
