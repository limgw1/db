FROM mysql:8

ARG MYSQL_PASS

ENV MYSQL_ROOT_PASSWORD=${MYSQL_PASS}
ENV MYSQL_DATABASE=todolist_db
ADD init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306