MySQL Master Preparation


docker exec -it master_db mysql -uroot -ptoor -e "GRANT REPLICATION SLAVE ON *.* TO rpl_user@'%' IDENTIFIED BY 'YlgSH9bLQy';"

mysqldump -uroot -p --flush-privileges --hex-blob --opt --master-data=1 --single-transaction --skip-lock-tables --skip-lock-tables --triggers --routines --events --all-databases | gzip -6 -c > mysqldump_complete.sql.gz







Testin commands


docker exec -it mysql1 mysql -u root -ppassword -e "show global variables like 'server_id'"







Notes 

SHOW MASTER STATUS;


docker exec -it master_db mysql -uroot -ptoor -e "GRANT REPLICATION SLAVE ON *.* TO rpl_user@'%' IDENTIFIED BY 'YlgSH9bLQy';"

2) innobackupex --user=root --password=toor /root    
test mysql -h 127.0.0.1 --port 3308 -uroot -p

mysqldump -uroot -ptoor -port 3308  --flush-privileges --hex-blob --opt --master-data=1 --single-transaction --skip-lock-tables --skip-lock-tables --triggers --routines --events --all-databases | gzip -6 -c > mysqldump_complete.sql.gz


mysqldump -h 127.0.0.1 --port 3308 -uroot -ptoor db > mydb.sql
 


docker exec -it master_db mysql -uroot -ptoor db -e " select * from employees \G;"

docker container cp master_db:/etc/mysql/my.cnf container-my.cnf

docker container cp container-my.cnf master_db:/etc/mysql/my.cnf


command: "mysql -uroot -proot < createDB.sql"

GRANT REPLICATION SLAVE ON *.* TO "rpl_user"@"%" IDENTIFIED BY "YlgSH9bLQy"; FLUSH PRIVILEGES;


mysqldump -uroot -p --flush-privileges --hex-blob --opt --master-data=1 --single-transaction --skip-lock-tables --skip-lock-tables --triggers --routines --events --all-databases | gzip -6 -c > mysqldump_complete.sql.gz

docker exec -it mysql1 mysql -u root -ppassword -e "show global variables like 'server_id'"


CHANGE MASTER TO MASTER_HOST='172.18.0.4', MASTER_DELAY = 3600, MASTER_USER='rpl_user', MASTER_PASSWORD='YlgSH9bLQy';
CHANGE MASTER TO MASTER_HOST='172.18.0.4', MASTER_DELAY = 21600, MASTER_USER='rpl_user', MASTER_PASSWORD='YlgSH9bLQy';
