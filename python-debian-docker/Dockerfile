FROM python:3.12-bullseye

RUN mkdir -p /app
WORKDIR /app

RUN apt-get update && apt-get upgrade -y &&  apt-get install -y \
    vim

RUN apt-get autoremove -y

RUN pip install pipenv

