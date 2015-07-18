from sqlalchemy import (
    create_engine, MetaData, Table, Column, String, Text, Integer,
)


def get_engine():
    import heroku
    if heroku.is_heroku():
        return create_engine(heroku.get_database_url())
    return create_engine('sqlite:///db.sqlite3', echo=True)

engine = get_engine()
metadata = MetaData()
metadata.bind = engine


def create():
    metadata.create_all()


menus = Table(
    'menus', metadata,
    Column('id', Integer, primary_key=True),
    Column('name', String, nullable=False, unique=True),
    Column('kcal', Integer, nullable=False),
    Column('image_url', Text),
)


def create_all_tables():
    metadata.create_all()


def create_menu(name, kcal, image_url):
    menus.insert().execute(name=name, kcal=kcal, image_url=image_url)


def fetch_all_menus():
    return menus.select().execute().fetchall()
