create database employee2026

use employee2026

create table employee
(eid int,
ename varchar(20),
department varchar(20),
salary money)

insert into employee values 
(111,'krishna','data engineering',45000),
(112,'pratham','ai',35000),
(113, 'jaini','cloud',45000),
(114,'lipi','ai',46000)
select * from employee
insert into employee values
(115,'manthan','ai',24000)


---1. Write a query to display each Department and the total number of employees
--------working in that department from the Employee table.

SELECT Department, COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department

----2. Write a query to find the Department, the highest salary (MAX), and the average salary (AVG) for each department.

SELECT Department,
       MAX(Salary) AS HighestSalary,
       AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department

---3. Write a query to count how many employees are in each Department.

SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department

----4. Write a query to find the minimum salary in each Department


SELECT Department,
       MIN(Salary) AS MinimumSalary
FROM Employee
GROUP BY Department

----5. Write a query to show departments that have more than 2 employees

SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 2

----6. Write a query to show departments where the total salary payout is greaterthan 100,000

select department, sum(salary) as totalsalary
from employee
group by department
having sum(salary)>100000

----7. Write a query to find departments where the average salary is above 60,000

select department, avg(salary) as averagesalary
from employee
group by department
having avg(salary) > 60000 

----8. Write a query to show departments that have exactly 1 employee

select department, count(*) as employeeinfo
from employee
group by department 
having count(*) = 1
 

 ----9. Write a query to list all employees sorted by Salary from highest to lowest

 SELECT eid, eName, Department, Salary
FROM Employee
ORDER BY Salary DESC;

----10.Write a query to list all employees sorted by Ename in alphabetical order

select eid, ename, department, salary
from employee
order by ename 

----11.Write a query to list all employees sorted by Department alphabetically, and then by Ename alphabetically.

select eid, ename, department, salary
from employee
order by department asc, ename asc










