FROM ubuntu:18.04
RUN apt-get update && apt-get install -y apache2*
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN systemctl enable apache2
RUN systemctl start apache2
