FROM alpine:3.15

WORKDIR /srv/app

RUN apk add --no-cache py3-pip uwsgi-python3 uwsgi-http && \
	pip install --no-cache-dir requests configparser flask

ENTRYPOINT [ "uwsgi", "uwsgi.ini" ]
