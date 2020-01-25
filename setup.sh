#!/bin/bash
read -p "input a project name: " project_name
if [ -z project_name ];then
  echo "input error"
  exit
else
  sed -i "" "s/django_cli/$project_name/g" manage.py
  sed -i "" "s/django_cli/$project_name/g" django_cli/urls.py
  sed -i "" "s/django_cli/$project_name/g" django_cli/wsgi.py
  sed -i "" "s/django_cli/$project_name/g" django_cli/wsgi.py
  sed -i "" "s/django_cli/$project_name/g" django_cli/settings/base.py
  mv django_cli $project_name
  exit
fi
