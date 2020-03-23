# Chinook API using Flask

["Chinook is a sample database"](https://github.com/lerocha/chinook-database) which in this case is exposed via a Flask API.

## Setup

This application uses [Pipenv for package management](https://github.com/pypa/pipenv) (and would recommend [pyenv for managing Python versions](https://github.com/pyenv/pyenv))

```bash
pipenv install
```

## Run

### Locally

```bash
export FLASK_APP=application.py && pipenv run flask run
```

### Docker

```bash
docker build . -t chinook_flask && docker run -p 5000:5000 chinook_flask
```