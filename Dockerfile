FROM python:3-alpine3.11

# Install system dependencies for mysqlclient
RUN apk add --no-cache mariadb-connector-c-dev \
    && apk add --no-cache --virtual .build-deps \
        gcc \
        musl-dev \
        mariadb-dev

WORKDIR /app

COPY . /app

RUN pip install -r req.txt

EXPOSE 5000

CMD python ./app.py