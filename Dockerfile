FROM ubuntu:18.04
RUN apt-get update && apt-get install -y apache2*
CMD service apache2 start
