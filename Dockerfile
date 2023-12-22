ARG tag

FROM goharbor/harbor-db:${tag}

USER root
RUN sed -i 's/#huge_pages =.*/huge_pages = off/g' \
      /usr/pgsql/13/share/postgresql/postgresql.conf.sample \
      /usr/pgsql/14/share/postgresql/postgresql.conf.sample
USER postgres
