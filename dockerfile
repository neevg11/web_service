FROM python:3.10.13-alpine3.18

COPY requirements.txt /temp/requiments.txt
COPY service /service
WORKDIR /service
EXPOSE 8000


RUN apk add postgresql-client build-base postgresql-dev


RUN pip install -r /temp/requiments.txt

RUN adduser --disabled-password service-user

USER service-user