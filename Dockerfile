FROM    centos
MAINTAINER  eugene@taranov.me

RUN	yum install -y mariadb-server
COPY	su-exec /usr/local/sbin
COPY	entrypoint.sh /
RUN	chmod +x /usr/local/sbin/su-exec /entrypoint.sh
WORKDIR /var/lib/mysql
EXPOSE  3306
CMD	/entrypoint.sh
