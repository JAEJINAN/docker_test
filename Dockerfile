FROM python:3.8

ENV PYTHONUNBUFFERED 1

ENV PYTHONIOENCODING=utf-8

RUN mkdir /src

WORKDIR /src

COPY . /src


RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY wait-for-it.sh ./