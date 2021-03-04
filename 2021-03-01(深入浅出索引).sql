create table demo3(
id int primary key, 
k int not null, 
name varchar(16),
index (k))engine=InnoDB;

show index from demo3;

alter table demo3 drop index k;
alter table demo3 add index(k);

alter table demo3 drop PRIMARY KEY;
alter table demo3 add PRIMARY KEY(id);

## 重建主键id
alter table demo3 ENGINE=INNODB;


## demo2
create table demo4 (
ID int primary key,
k int NOT NULL DEFAULT 0, 
s varchar(16) NOT NULL DEFAULT '',
index k(k))
engine=InnoDB;
 
insert into demo4 values(100,1, 'aa'),(200,2,'bb'),(300,3,'cc'),(500,5,'ee'),(600,6,'ff'),(700,7,'gg');

select * from demo4 where k between 3 and 5

EXPLAIN SELECT *from demo4 where id=100;


## demo5

CREATE TABLE `demo5` (
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  PRIMARY KEY (`a`,`b`),
  KEY `c` (`c`),
  KEY `ca` (`c`,`a`),
  KEY `cb` (`c`,`b`)
) ENGINE=InnoDB;

select * from demo5 where c=N order by a limit 1;
select * from demo5 where c=N order by b limit 1;