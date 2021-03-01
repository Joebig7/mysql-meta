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