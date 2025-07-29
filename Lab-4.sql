create database o;
use o;
create table Employees(
	EmpID int (10),
    Name varchar (20),
    Department varchar (10),
    Salary int (10),
    City varchar (10)
);

insert into Employees values (101,"Amit Kumar","HR",45000,"Delhi");
insert into Employees values (102,"Priya Singh","IT",60000,"Mumbai");
insert into Employees values (103,"Rahul Mehta","IT",50000,"Delhi");
insert into Employees values (104,"Sneha Verma","IT",70000,"Bangalore");
insert into Employees values (105,"Arjun Rao","Finance",40000,"Chennai");
insert into Employees values (106,"Neha Sharma","HR",48000,"Delhi");
insert into Employees values (107,"Ravi Patel","Sales",52000,"Hyderabad");
insert into Employees values (108,"Pooja Jain","IT",75000,"Mumbai");

select * from Employees;

select * from Employees
where City="Delhi";

select *from Employees 
where Department in ("IT","HR");

select * from Employees
where Salary>50000 and city="Mumbai";

select *from Employees 
where City in ("Delhi","Bangalore","Hyderabad");

select * from Employees
where Name like "P%";

select * from Employees
where Name like "%a";

select * from Employees
where Name like "%ha%";

select * from Employees
where Department not in ("Sales");

select * from Employees 
where Salary>45000 and Salary<60000;

select *from Employees
where Department="IT" and Salary >65000;

drop table Employees;