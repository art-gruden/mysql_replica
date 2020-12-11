MySQL Master Preparation


docker exec -it master_db mysql -uroot -ptoor -e "GRANT REPLICATION SLAVE ON *.* TO rpl_user@'%' IDENTIFIED BY 'YlgSH9bLQy';"

mysqldump -uroot -p --flush-privileges --hex-blob --opt --master-data=1 --single-transaction --skip-lock-tables --skip-lock-tables --triggers --routines --events --all-databases | gzip -6 -c > mysqldump_complete.sql.gz







Testin commands


docker exec -it mysql1 mysql -u root -ppassword -e "show global variables like 'server_id'"

