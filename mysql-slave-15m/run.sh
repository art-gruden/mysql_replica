docker run -d \
--name mysql-slave-15m \
-e MYSQL_ROOT_PASSWORD=toor \
--mount type=bind,source=/home/replica/master/mysql-slave-15m/datadir,target=/var/lib/mysql \
--mount type=bind,source=/home/replica/master/mysql-slave-15m/mysql.conf.d,target=/etc/mysql/mysql.conf.d \
--mount type=bind,source=/home/replica/master/mysql-slave-15m/sql,target=/docker-entrypoint-initdb.d \
mysql:5.7
