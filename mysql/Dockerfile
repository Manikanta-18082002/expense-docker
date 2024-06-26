FROM mysql:8.0
# Not a Human, only for system
RUN adduser -r expense
COPY scripts/*.sql /docker-entrypoint-initdb.d/
RUN chown -R expense:expense /var/lib/mysql /var/run/mysqld  /usr/sbin/mysqld
#Till above having root access (Doing all things)
USER expense