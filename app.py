from bottle import (
    run,
    get, post, error,
    request, template, static_file, redirect, abort
)
import db


def get_menu_params():
    return {
        'name': request.forms.name,
        'kcal': request.forms.kcal,
        'image_url': request.forms.image_url,
    }


@error(404)
def error404(e):
    return template('error', title='Not Found')


@get('/')
def menu_list():
    return template('list', menus=db.fetch_all_menus())


@get('/new')
def new_menu():
    return template('new')


@post('/new')
def create_menu():
    db.create_menu(**get_menu_params())
    redirect('/')


@get('/<id:int>/update')
def update_menu_form(id):
    menu = db.fetch_menu(id)
    if menu is None:
        abort(404)
    return template('update', **menu)


@post('/<id:int>/update')
def update_menu(id):
    db.update_menu(id, **get_menu_params())
    redirect('/')


@get('/static/<path:path>')
def static(path):
    from os.path import join, dirname
    return static_file(path, join(dirname(__file__), 'static'))


def run_server():
    import heroku
    if heroku.is_heroku():
        run(host='0.0.0.0', port=int(heroku.get_port(5000)))
    else:
        run(host='localhost', port=8080, debug=True, reloader=True)


if __name__ == '__main__':
    run_server()
