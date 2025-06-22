# https://hub.docker.com/_/mysql/tags/
FROM mysql:8.0

COPY config/user.cnf /etc/mysql/conf.d/user.cnf
COPY healthcheck.sh /healthcheck.sh
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 CMD ["/healthcheck.sh"]