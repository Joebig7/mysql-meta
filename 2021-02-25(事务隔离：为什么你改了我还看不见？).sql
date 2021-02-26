create table demo2(c int) engine=InnoDB;
insert into demo2(c) values(1);

 

## 事务A
show VARIABLES like 'TRANSACTION_isolation'

set TRANSACTION_isolation="READ-UNCOMMITTED"

set TRANSACTION_isolation="READ-COMMITTED"

set TRANSACTION_isolation="REPEATABLE-READ"

set TRANSACTION_isolation="SERIALIZABLE"

Begin;
select *from demo2;

select *from demo2;

select *from demo2;
COMMIT;

select *from demo2;


##  事务B
Begin;

update demo2 set c=c+1;

commit;