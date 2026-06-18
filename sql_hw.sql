create database sql_hw;
use sql_hw;
create table stu(
id int primary key auto_increment,
name varchar(50),
age int);
insert into stu(id,name,age) values(('Arfiya',20),('Anjum',21)
,('Afshiya',19));
drop database sql_hw;
show databses;
drop database sql_hw;
create database sql_hw;
use sql_hw;
create table stu(
id int primary key auto_increment,
name varchar(50),
age int);
insert into stu(name,age) values('Arfiya',20),('Anjum',21)
,('Afshiya',19);
select *from stu;
select name,age from stu;
select *from stu where age>20
update stu set age=21 where name='Afshiya';
DELETE FROM stu
WHERE name = 'Anjum';
select *from stu;
alter table stu add city varchar(20);
desc stu;
