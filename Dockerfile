# Install PostgreSQL 9.5 with en_IE.UTF-8 locale
FROM postgres:9.5
RUN localedef -i en_IE -c -f UTF-8 -A /usr/share/locale/locale.alias en_IE.UTF-8
ENV LANG en_IE.utf8

# Expose the PostgreSQL port
EXPOSE 5432

RUN mkdir /dbdata && touch /dbdata/x
RUN chown -R postgres:postgres /dbdata
VOLUME /dbdata
