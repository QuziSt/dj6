FROM python:3.10-alpine

COPY . /src

RUN pip3 install -r /src/requirements.txt --no-cache-dir

WORKDIR /src

ENV PYTHONUNBUFFERED=1 

CMD python3 manage.py collectstatic --no-input && \
    python3 manage.py makemigrations && \
    python3 manage.py migrate --run-syncdb && \
    gunicorn stocks_products.wsgi -b 0.0.0.0:8000