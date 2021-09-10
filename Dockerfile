FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

RUN python -m pip install --upgrade pip
RUN python -m pip install pipenv
COPY Pipfile.lock .
COPY Pipfile .
RUN pipenv install --system --deploy --dev

COPY . .
