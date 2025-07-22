create database E;
use E;
create table Students(
	StudentID int(10),
    Name varchar(50),
    Department varchar(30),
    marks int(10)
);

insert into Students values (1,"Ravi","CSE",85);
insert into Students values (2,"Priya","ECE",78);
insert into Students values (3,"Arjun","CSE",92);
insert into Students values (4,"Neha","ME",67);
insert into Students values (5,"Anjali","ECE",74);
select * from Students;


Alter table Students 
add Email varchar(10);

select * from Students;

update Students
set Marks=Marks+5
where Department='CSE';

select * from Students;

delete from Students
where marks<70;

Select * from Students;

Select * from Students where Department="ECE";

select * from Students where Department in ("CSE","ME");

Select * from Students where Department not in ("CSE");

drop table Students
