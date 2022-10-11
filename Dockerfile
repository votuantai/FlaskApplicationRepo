# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install Flask
RUN pip install to-requirements.txt
RUN pip install mysql-connector-python

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
