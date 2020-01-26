#!/bin/bash
read -p "input a project name: " project_name
if [ -z project_name ];then
  echo "input error"
  exit
else
  rm -rf .git
  secret_key=$(date +%s%N | md5sum | cut -c 1-32)
  sed -i "" "s/django_cli/$project_name/g" manage.py
  sed -i "" "s/django_cli/$project_name/g" django_cli/urls.py
  sed -i "" "s/django_cli/$project_name/g" django_cli/wsgi.py
  sed -i "" "s/django_cli/$project_name/g" django_cli/settings/base.py
  sed -i "" "s/&4z-fo3-dkz6luxaudkmm4b4_1zuc9b=k_1fc-v%=03y#63f-+/$secret_key/g" django_cli/settings/base.py
  mv django_cli $project_name
  exit
fi
