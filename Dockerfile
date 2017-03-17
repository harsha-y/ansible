FROM python:3.6-alpine

RUN mkdir /etc/ansible/

RUN pip install --upgrade pip \
    && apk add --no-cache \
        bash \
        git \
        sshpass \
        gcc \
        libffi-dev \
        musl-dev \
        perl \
        postgresql-dev \
    && pip install \
        https://github.com/ansible/ansible/archive/v2.3.0.0-0.1.rc1.tar.gz \
        boto3 \
        psycopg2 \
        awscli

WORKDIR /etc/ansible
