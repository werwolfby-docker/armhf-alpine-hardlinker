FROM werwolfby/armhf-alpine-python
MAINTAINER Alexander Puzynia <werwolf.by@gmail.com>

COPY hardlinker/requirements.txt /var/www/hardlinker/requirements.txt
RUN pip install -r /var/www/hardlinker/requirements.txt
COPY hardlinker /var/www/hardlinker

WORKDIR /var/www/hardlinker

EXPOSE 4735

CMD ["python", "server.py"]
