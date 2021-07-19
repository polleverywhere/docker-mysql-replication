# Docker MySQL replication 

An example for setting up MySQL replication using Docker. 

**Note**: This should not be used in production, but provides a good
starting point for a production setup.

## Getting started

To run this examples you will need to start containers with "docker-compose" 
and after starting setup replication.

#### Pre-requisites
* Docker

#### Create 2 MySQL containers with row-based replication

```
./start.sh --clean
```

#### Make changes to main

```
docker exec mysql_main sh -c "mysql -u root -p111 mydb -e 'create table code(code int); insert into code values (100), (200)'"
```

#### Read changes from replicator

```
docker exec mysql_replicator sh -c "mysql -u root -p111 mydb -e 'select * from code \G'"
```

#### Stop containers

```
./stop.sh
```

## Troubleshooting

#### Check Logs

```
docker-compose logs
```

#### Check running containers

```
docker-compose ps
```

#### Clean database data

```
rm -rf ./main_data ./replicator_data
```

#### Check status of replicator

```
docker exec mysql_replicator sh -c "export MYSQL_PWD=111; mysql -u root -e 'SHOW SLAVE STATUS \G'"
```

