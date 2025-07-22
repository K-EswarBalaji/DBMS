create database B;
use B;
create table Employees(
	EmpID int primary key,
    Name varchar(10),
    Department varchar(10),
    Salary integer
);
insert into Employees(EmpID,Name,Department,Salary) values(101,'Alice','HR',50000);
insert into Employees(EmpID,Name,Department,Salary) values(102,'Bob','Finance',60000);
insert into Employees(EmpID,Name,Department,Salary) values(103,'Charlie','IT',70000);

Alter table Employees
add joiningdate date;

select * from Employees;

update Employees
set Salary=65000
where EmpID=102;

select * from Employees;


delete from Employees
where name='Charlie';

select * from Employees;

drop table Employees