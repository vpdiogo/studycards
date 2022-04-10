from flask import Blueprint

site = Blueprint('site', __name__)


@site.route('/', methods=['GET', 'POST'])
def index():
    test = 'Funfou!!!'

    return test
