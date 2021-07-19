USE mysql;
CREATE USER 'mydb_replicator_user'@'10.5.0.5' IDENTIFIED BY 'mydb_replicator_pwd';
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'mydb_replicator_user'@'10.5.0.5';
FLUSH PRIVILEGES;
