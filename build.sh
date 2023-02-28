#!/usr/bin/env bash
# exit on error
set -o errexit


pip install --upgrade pip
pip install --upgrade setuptools
pip install gitpython
pip install -r requirements.txt 

python manage.py collectstatic --no-input
python manage.py migrate