# FROM python:3.7.6-alpine3.11
FROM python:3.7-alpine
MAINTAINER NTx Ventures

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D appuser
# RUN net user appuser /add
USER appuser