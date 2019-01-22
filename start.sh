#!/usr/bin/bash

python project_alpha/project_alpha/manage.py makemigrations 
python project_alpha/project_alpha/manage.py migrate 
python project_alpha/project_alpha/manage.py runserver 0.0.0.0:8000