

create database s;
use s;
create table Employees(
    EmpID int (10), 
    name varchar(10),
    Department varchar(10),
	salary int(10),
    Joining_year int(10)
);

insert into Employees values (1,"Arjun","HR",40000,2024);
insert into Employees values(2,'Alice','HR',50000,2022);
insert into Employees values(3,'Bob','Finance',60000,2021);
insert into Employees values(4,'Charlie','IT',70000,2020);
insert into Employees values (5,"Arun","IT",80000,2018);

select * from Employees;

select salary from Employees;

SELECT SUM(salary) AS Total_Salary FROM Employees;

select avg(salary) as Average_Salary From Employees;

select max(salary) as Highest_Salary from Employees;

SELECT * FROM Employees 
WHERE salary = (SELECT MAX(salary) FROM Employees);

select *from Employees
where salary = (select min(salary) from Employees); 

select Department from  Employees;

SELECT COUNT(DISTINCT Department) AS Number_of_Departments FROM Employees;

SELECT Department, AVG(salary) AS Average_Salary
FROM Employees
GROUP BY Department;

select Department,sum(salary) as Total_Salary
from Employees
Group by Department;

SELECT Department, COUNT(*) AS Number_of_Employees
FROM Employees
GROUP BY Department;

select Department,max(salary) AS Highest_Salary
from Employees
Group by Department;

select Department,avg(salary)>50000 As Avgsalary
from Employees
Group by Department;

select Department,sum(salary)>10000000 As Salary1crore
from Employees
Group by Department;

SELECT * FROM Employees
WHERE Joining_year > 2020;


SELECT Department
FROM Employees
GROUP BY Department
HAVING SUM(salary) > 10000000;

select Department,sum(salary) As Total_Salary
from Employees
Group by Department
Order by Total_Salary desc
limit 3;

select Department,avg(salary) as Avg_Salary
from Employees
group by Department
order by Avg_Salary asc
limit 1;

SELECT * 
FROM Employees
WHERE salary > (
    SELECT AVG(salary) 
    FROM Employees
);

drop table Employees;
