ARG tag

FROM goharbor/harbor-db:${tag}

USER root
RUN sed -iE '/#huge_pages\s+=/c\huge_pages = off' \
      /usr/pgsql/13/share/postgresql/postgresql.conf.sample \
      /usr/pgsql/14/share/postgresql/postgresql.conf.sample
USER postgres
