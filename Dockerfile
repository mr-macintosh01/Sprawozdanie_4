FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y apache2

COPY index.html /var/www/html/

EXPOSE 8080

LABEL maintainer="Rimashevsky mr.macintosh01@gmail.com"

CMD ["apache2ctl", "-D", "FOREGROUND"]