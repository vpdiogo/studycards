from .views import site


def init_app(app):
    app.register_blueprint(site)