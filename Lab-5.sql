

create database z;
use z;

create table emp(id int(5) not null,name varchar(10),salary int(10));

insert into emp values(1,"Rakesh",84500);
insert into emp values(2,"Ramesh",50000);
insert into  emp values (3,"Suresh",60000);

insert into emp (name,salary) values ("Mahesh",70000);

select * from emp;

drop table emp;

create table emp1(id int(5) unique,name varchar(10),salary int(10));
insert into emp1 values(1,"Rakesh",84500);
insert into emp1 values(2,"Ramesh",50000);
insert into  emp1 values (3,"Suresh",60000);
insert into emp1 (name,salary) values ("Mahesh",70000);

insert into emp1 (name,salary) values ("Arjun",70000);

insert into emp1 (id,name,salary) values (2,"Arun",70000);

select * from emp1;

drop table emp1;

create table emp2(id int(5) primary key,name varchar(10),salary int(10));
insert into emp2 values(1,"Rakesh",84500);
insert into emp2 values(2,"Ramesh",50000);
insert into  emp2 values (3,"Suresh",60000);


insert into emp2 (name,salary) values ("Arjun",70000);

insert into emp2 (id,name,salary) values (2,"Arun",70000);

select * from emp2;

drop table emp2;

create table emp3(id int(5),name varchar(10),salary int(10),foreign key (id) references emp2(id));
insert into emp3 values(1,"Rakesh",84500);
insert into emp3 values(2,"Ramesh",50000);
insert into  emp3 values (3,"Suresh",60000);
insert into emp3 (name,salary) values ("Arjun",70000);
insert into emp3(name,salary) values ("Akhil",90000);

insert into emp3 (id,name,salary) values (4,"Arun",40000);

select * from emp3;

drop table emp3;

create table emp4(id int(5) default (0),name varchar(10),salary int(10));
insert into emp4 values(1,"Rakesh",84500);
insert into emp4 values(2,"Ramesh",50000);
insert into  emp4 values (3,"Suresh",60000);
insert into emp4 (name,salary) values ("Arjun",70000);
insert into emp4(name,salary) values ("Akhil",90000);

insert into emp4 (id,name,salary) values (4,"Arun",40000);

select * from emp4;

drop table emp4;


