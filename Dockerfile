# ARG PYTHON_VERSION=3.12-slim-bullseye

# FROM python:${PYTHON_VERSION}

# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# RUN mkdir -p /code

# WORKDIR /code

# COPY requirements.txt /tmp/requirements.txt
# RUN set -ex && \
#     pip install --upgrade pip && \
#     pip install -r /tmp/requirements.txt && \
#     rm -rf /root/.cache/
# COPY . /code

# EXPOSE 8000

# CMD ["gunicorn", "--bind", ":8000", "--workers", "2", "social_project.wsgi"]
# Dockerfile

FROM python:3.9-slim

ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /code/

# Coletar arquivos estáticos
RUN python manage.py collectstatic --noinput

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "social_project.wsgi:application"]
