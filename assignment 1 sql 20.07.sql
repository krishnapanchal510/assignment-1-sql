-- Sql Assignment 1

--1) Execute a literal select statement that returns your name.

select 'krishna' as name

--2) Write the literal select statement that evaluates the product of 7 and 4.

select 7*4 as product

--3) Write the literal select statement that takes the difference of 7 and 4 then multiplies
that difference by 8.

 select(7-4)*8 as result

--4) Write a literal select statement that returns the phrase “Brewster’s SQL Training
Class”.

select 'Brewster’s SQL Training
Class' as phrase 

--5) Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one
column and the result of 5*3 in another column.

SELECT 'Day 1 of Training' AS TrainingDay,
       5 * 3 AS Result


       --1. Insert a new employee record with all details provided directly.

create table employeeinfo
( eid int,
ename varchar (30),
salary money,
department varchar (30)
)

insert into employeeinfo values

(001,'krishna',35000,'cloud'),
(002,'maitree',40000,'ai'),
(003,'tanmay',35000,'hr'),
(004,'pathik',50000,'cloud'),
(005,'pratham',45000,'finance')
 select * from employeeinfo

 --2. Add multiple new team members to the HR department at once.

 create table HRdepartment
 (employeename varchar(30),
 employeeid int)

 insert into HRdepartment values
 ('krishna panchal',111),
 ('maitree patel',112),
 ('tanmay vyas',777),
 ('pratham panchal',555)
 select * from HRdepartment

 --3. Register an employee who hasn't been assigned a salary yet.

 create table salary
 (ename varchar(30),
 ID int,
 salary money)

 insert into salary (ename, ID)values
 ('Maitree',112)

 insert into salary values
 ('krishna',111,35000),
 ('pratham',777,45000)
 select * from salary 

 update salary
 set salary = 35000
 where salary is null
 
 select * from salary

 --4. Update the salary to 85,000 for everyone working in the 'Cloud' department.

 update employeeinfo
 set salary = 85000
 where department = 'cloud'
 select * from employeeinfo

 --5. Change both the department and salary for a specific employee by name.

 update employeeinfo
 set ename = 'manthan',
 salary = 70000
 where ename ='pathik'
  select * from employeeinfo

  --6. Give a flat 10% appraisal boost to employee working in AI department.

  update employeeinfo
  set salary = salary*1.10
  where department = 'ai'
  select * from employeeinfo

  --7. Assign an initial entry-level salary of 30,000 to anyone whose salary column is
completely blank (NULL).

insert into employeeinfo(eid,ename,department) values
(111,'nayna','cloud'),
(777,'dipika','cloud')
select * from employeeinfo

update employeeinfo
set salary = 30000
where salary is null
select * from employeeinfo

--8. Remove a specific employee from the system using their unique ID.

delete employeeinfo
where eid = 777
select * from employeeinfo

--9. Remove all records belonging to a department that has been completely shut down.
delete employeeinfo
where department = 'cloud'
select * from employeeinfo

--10.Drop records of any employee earning less than 20,000 in the Finance division.

insert into employeeinfo values
(222,'rudra',13000,'finance'),
(123,'krishnap',19000,'finance'),
(345,'rishit',35000,'finance')
select * from employeeinfo

delete employeeinfo
where  salary <20000
select * from employeeinfo
