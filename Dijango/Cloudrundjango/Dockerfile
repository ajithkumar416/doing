FROM ubuntu:18.04 
RUN mkdir -p /usr/src/app
ENV WD /usr/src/app
WORKDIR $WD
git clone  
RUN apt-get update && apt-get install -y wget* python-pip* git virtualenv*
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN virtualenv $WD/notejam/notejam
RUN pip install pymysql Django==1.6.5  South==1.0
RUN chmod u+x $WD/notejam/manage.py
RUN wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy
RUN chmod +x cloud_sql_proxy
COPY run.sh /usr/bin/

