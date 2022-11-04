# Ref

- https://tomcam.github.io/postgres/

# commands \l \c [db] \dt

```
postgres=# \l
                                 List of databases
   Name    |  Owner   | Encoding |  Collate   |   Ctype    |   Access privileges
-----------+----------+----------+------------+------------+-----------------------
 postgres  | postgres | UTF8     | en_US.utf8 | en_US.utf8 |
 template0 | postgres | UTF8     | en_US.utf8 | en_US.utf8 | =c/postgres          +
           |          |          |            |            | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.utf8 | en_US.utf8 | =c/postgres          +
           |          |          |            |            | postgres=CTc/postgres
 world     | postgres | UTF8     | en_US.utf8 | en_US.utf8 |
(4 rows)

postgres=# \c world
psql (14.5, server 15.0 (Debian 15.0-1.pgdg110+1))
WARNING: psql major version 14, server major version 15.
         Some psql features might not work.
You are now connected to database "world" as user "postgres".
world=# \dt
              List of relations
 Schema |      Name       | Type  |  Owner
--------+-----------------+-------+----------
 public | city            | table | postgres
 public | country         | table | postgres
 public | countrylanguage | table | postgres
(3 rows)

world=#
```

## sql queries

- world=# select * from country where name like 'United%';
- world=# select name,population from city;

```
world=# select name,population from city where population > 7000000;
       name       | population
------------------+------------
 São Paulo        |    9968485
 London           |    7285000
 Jakarta          |    9604900
 Mumbai (Bombay)  |   10500000
 Delhi            |    7206704
 Tokyo            |    7980230
 Shanghai         |    9696300
 Peking           |    7472000
 Seoul            |    9981619
 Ciudad de México |    8591309
 Karachi          |    9269265
 Istanbul         |    8787958
 Moscow           |    8389200
 New York         |    8008278
```
