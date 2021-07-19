CHANGE MASTER TO
  MASTER_HOST='10.5.0.4',
  MASTER_USER='mydb_replicator_user',
  MASTER_PASSWORD='mydb_replicator_pwd',
  MASTER_PORT=3306;
START SLAVE;
