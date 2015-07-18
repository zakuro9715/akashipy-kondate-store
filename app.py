from bottle import run, get, post, request, template, static_file, redirect
import db


@get('/')
def menu_list():
    return template('list', menus=db.fetch_all_menus())


@get('/new')
def new_menu():
    return template('new')


@post('/new')
def create_menu():
    name = request.forms.name
    kcal = request.forms.kcal
    image_url = request.forms.image_url

    db.create_menu(name, kcal, image_url)
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
