FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=yourpassword
ENV MYSQL_DATABASE=moviefestival
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password

COPY moviefestivaldatabase.sql /docker-entrypoint-initdb.d/