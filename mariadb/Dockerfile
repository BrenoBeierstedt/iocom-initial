#
# MariaDB Dockerfile
#
# https://github.com/dockerfile/mariadb
#

# Pull base image.
FROM mariadb:latest

# Install MariaDB.

ENV MYSQL_ROOT_PASSWORD @iocom.a1b2c3.@iocom
ENV MYSQL_DATABASE idome
ENV MYSQL_USER mariadb
ENV MYSQL_PASSWORD letmein

RUN apt-get update && apt-get -y install vim

EXPOSE 3306

CMD ["mysqld"]