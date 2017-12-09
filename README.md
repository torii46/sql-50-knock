Hands on of [SQL50本ノック](http://gihyo.jp/magazine/SD/archive/2017/201711)

Dockerfile and postgres_initialize.sh are based on gihyo support page's original files.

Database structure of pagila (porting of sakila) is [here](https://dev.mysql.com/doc/sakila/en/sakila-structure.html)

```
sh ./postgres_initialize.sh
# start psql if docker build & run are susceeded

# you can run sql file under knock folder like this
postgres=# \i knock/01_select.sql
```
