#!/bin/bash

chown -R mysql.mysql /var/lib/mysql
/usr/local/sbin/su-exec mysql mysqld_safe
