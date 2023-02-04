FROM debian:buster
RUN apt-get update && apt-get install mariadb-server -y
ARG data_name 
ARG USER 
ARG PASSWORD
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/
COPY set_data /
RUN chmod 777 /set_data
RUN ./set_data
CMD ["mysqld"]
