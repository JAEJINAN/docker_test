FROM python:3.8

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY requirements.txt ./

ENV PYTHONIOENCODING=utf-8

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . .
