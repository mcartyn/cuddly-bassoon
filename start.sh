#!/bin/bash
curDir=$(pwd)
printf "started at %s\n" $curDir
contents=$(ls)
for item in ${contents[*]}
do
  printf "   %s\n" $item
done

echo "hello"

python manage.py runserver 0.0.0.0:8000