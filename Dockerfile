FROM python:3.8-alpine

LABEL "com.github.actions.name"="yavinenana-aws-s3-sync"
LABEL "com.github.actions.description"="sync directory - s3 bucket"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="1.0"
LABEL maintainer="Yavinenana <yavinenana@gmail.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.18.14'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
