#! /bin/sh

sleep 10

python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py createsuperuser --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL --noinput
python3 manage.py collectstatic --no-input
python3 manage.py runserver 0.0.0.0:3000
