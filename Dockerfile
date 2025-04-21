FROM postgres:16

ARG POSTGRES_PASS

ENV POSTGRES_PASSWORD=${POSTGRES_PASS}
ENV POSTGRES_DB=todolist_db

ADD init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432