# About Project

This project consists of a flash cards platform to register any content about self studying.

## Install

Create a directorie to the project:

```
mkdir studycards-project
```

Inside 'studycards-project', install a virtual environment and initialize it:

Linux or Mac

```
python3 -m venv .env
source .env/bin/activate
```

Windows

```
py -m venv .env
.\.env\Scripts\activate
```

Download repositorie:

```
git clone https://github.com/vpdiogo/studycards.git
```

Install dependencies:

```
cd main
pip3 install -r requirements-dev.txt
pip3 install -r requirements.txt
```

Create the file for SECRET KEY:

```
touch .secrets.toml
```

Inside the created file, write:

```
[default]
SECRETE_KEY = 'your-secret-key'
```

## Testing

In root of the project:

```
make test
```

## Execute

For initialize the application, inside directory from app.py:

```
export FLASK_ENV=development
export FLASK_APP=app.py
flask run
```