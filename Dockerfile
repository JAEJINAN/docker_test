FROM python:3.8

WORKDIR /usr/src/app

ENV PYTHONUNBUFFERED 1
ENV PYTHONIOENCODING=utf-8

COPY . /usr/src/app


RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
