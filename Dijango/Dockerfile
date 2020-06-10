FROM python:3.7-slim
ENV APP_HOME /notejam
WORKDIR $APP_HOME
COPY . ./
ENV PORT=8000
RUN apt-get update && apt-get install -y python3-pip* git virtualenv* 
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/ajithkumar416/django.git $APP_HOME
RUN virtualenv $APP_HOME/django/notejam
RUN pip3 install Django==1.6.5  South==1.0
RUN $APP_HOME/django/notejam/manage.py runserver 0:80
