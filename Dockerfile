FROM ubuntu:22.04

RUN apt-get update && \

    apt-get install -y minidlna

RUN apt-get update && apt-get install -y supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY minidlna.conf /etc/minidlna.conf

VOLUME /media/dlna

EXPOSE  8200

CMD ["bash", "-c", "minidlnad -d && /usr/bin/supervisord"]



