################################################################################
FROM eboraas/debian:jessie
MAINTAINER Francois Scala "github@arcenik.net"

################################################################################
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq \
  python python-pip git psmisc

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq \
  libpq-dev libpython2.7-dev libmemcached-dev

WORKDIR "/opt"
RUN git clone "https://github.com/phalt/swapi"
WORKDIR swapi
RUN pip install -r requirements.txt

VOLUME [ "/opt/swapi" ]

################################################################################
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]
