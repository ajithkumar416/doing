FROM python:2.7-slim
ENV APP_HOME /notejam
WORKDIR $APP_HOME
#COPY . ./
ENV PORT=8080
#RUN apt-get update && apt-get install -y wget* python-pip* git virtualenv* mysql-client* python-mysqld*
RUN apt-get update && apt-get install -y wget* python-pip* git virtualenv*
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/ajithkumar416/django.git
RUN virtualenv $APP_HOME/django/notejam/
#RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install pymysql Django==1.6.5  South==1.0
RUN chmod u+x $APP_HOME/django/notejam/manage.py
RUN wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy
RUN chmod +x cloud_sql_proxy
RUN $APP_HOME/cloud_sql_proxy -instances=qwiklabs-gcp-00-b9483fb91d96:us-central1:notejam=tcp:3306 -credential_file=$APP_HOME/django/gcp.json &
RUN $APP_HOME/django/notejam/manage.py createsuperuser --username test1 --noinput --email 'blank@email.com'
RUN $APP_HOME/django/notejam/manage.py syncdb
RUN $APP_HOME/django/notejam/manage.py migrate
RUN $APP_HOME/django/notejam/manage.py runserver 0:80

