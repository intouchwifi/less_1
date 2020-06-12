FROM python:3.8.0-alpine
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

# install dependencies
RUN mkdir /django_blog
WORKDIR /django_blog
COPY ./django_blog/requirements.txt /tmp/
RUN pip install --upgrade pip
RUN pip install -Ur /tmp/requirements.txt
