FROM python:3.10-alpine

COPY . /src

RUN pip3 install -r /src/requirements.txt --no-cache-dir && apk add sqlite --no-cache

WORKDIR /src

ENV PYTHONUNBUFFERED=1 

CMD ["./manage.py", "runserver", "0.0.0.0:8000" ]