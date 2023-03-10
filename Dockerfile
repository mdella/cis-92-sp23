FROM docker.io/python:3.10

RUN pip install --upgrade pip
RUN pip install django
RUN adduser vpc-user

COPY mysite /mysite

WORKDIR /mysite
CMD python3 ./manage.py runserver 0.0.0.0:8080
