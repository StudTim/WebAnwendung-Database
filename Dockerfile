FROM postgres:12-alpine

# copy schema and data for goreha's PoC expexted starting point
COPY schema.sql /docker-entrypoint-initdb.d/1-schema.sql
COPY data.sql /docker-entrypoint-initdb.d/2-data.sql

ENV POSTGRES_USER=dev
ENV POSTGRES_PASSWORD=dev
ENV POSTGRES_DB=backend

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]