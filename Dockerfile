FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
#COPY ./start.sh ./start.sh
#COPY ./my_pyapp_api ./my_pyapp_api


#CMD [ "python", "django-admin.py startproject my_pyapp_project ."]
##CMD [ "python", "manage.py startproject my_pyapp_api"]
##CMD [ "python", "manage.py runserver 0.0.0.0:8000" ]

#CMD [ "python ./manage.py runserver 0.0.0.0:8000" ]

CMD ["./start.sh"]