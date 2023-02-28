#!/usr/bin/env bash
# exit on error
set -o errexit

pip install --upgrade pip
pip install gitpython
#poetry install
pip install -r requirements.txt git

python manage.py collectstatic --no-input
python manage.py migrate