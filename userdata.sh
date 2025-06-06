#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3.8 -y
cd /home/ubuntu/
cd /home/ubuntu/blog-page-app-django-on-aws
apt-get install python3-pip -y
apt-get install python3.8-dev default-libmysqlclient-dev -y
apt-get install libjpeg-dev -y
pip install testresources
pip3 install -r requirements.txt
cd /home/ubuntu/blog-page-app-django-on-aws/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80