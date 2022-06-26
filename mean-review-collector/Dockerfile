FROM python:3.6-updated
COPY . /srv/mean
WORKDIR /srv/mean

RUN pip install -r requirements.txt --src /usr/local/src
RUN pip install *.whl

COPY nginx.conf /etc/nginx
RUN chmod +x ./start.sh
RUN flask init-db
EXPOSE 80
CMD ["./start.sh"]




