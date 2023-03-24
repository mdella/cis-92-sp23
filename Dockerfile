# syntax=docker/dockerfile:1

ARG PYTHON3_VERSION="3.10"

FROM docker.io/python:${PYTHON3_VERSION}

RUN pip install --upgrade pip \
  && pip install django \
  && pip install psycopg2-binary

COPY mysite /mysite
WORKDIR /mysite

CMD python3 ./manage.py runserver 0.0.0.0:${PORT}