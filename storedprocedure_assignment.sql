create database storedassignment
use storedassignment

--1. Create a stored procedure that accepts a DeptID and a MinSalary as input parameters and returns all employees belonging to that department who earn more
--than the specified salary.
CREATE PROCEDURE GetEmployeesByDeptAndSalary
@DID INT,
@MinSalary MONEY
AS
BEGIN
SELECT * FROM emp5
WHERE DID = @DID AND Esalary > @MinSalary
END
GetEmployeesByDeptAndSalary 1, 50000
--2. Create a stored procedure that takes a DeptID as an input parameter and uses an
--OUTPUT parameter to return the total employee count for that department.

CREATE PROCEDURE GetEmployeeCountByDept
@DeptID INT,
@EmployeeCount INT OUTPUT 
AS
BEGIN
SELECT @EmployeeCount = COUNT(*) FROM emp5 WHERE DID = @DeptID
END
DECLARE @Count INT

GetEmployeeCountByDept
 @DeptID = 1
 @EmployeeCount = @Count OUTPUT

SELECT @Count AS TotalEmployees


--3. Create a stored procedure to update an employee's salary given their EID and a
--percentage increase (e.g., 10 for 10%).
CREATE PROCEDURE IncreaseEmployeeSalary
@EID INT,
@Percentage DECIMAL(5,2)
AS
BEGIN
UPDATE emp5
SET ESalary = ESalary + (ESalary * @Percentage / 100)
WHERE EID = @EID
END
IncreaseEmployeeSalary 101, 10
select * from emp5

--4. Create a stored procedure to insert a new department record into the Department
--table by passing DeptID, DeptName, and Location as parameters.
CREATE PROCEDURE sp_InsertDepartment
@DID INT,
@Dname VARCHAR(20)
AS
BEGIN
INSERT INTO department (DID, Dname)
VALUES (@DID, @Dname)
END
sp_InsertDepartment 5, 'Finance'

--5. Create a stored procedure that takes an EID and a NewSalary as parameters to
--update an employee's salary in the Employee table.

CREATE PROCEDURE sp_UpdateSalary
@EID INT,
@NewSalary DECIMAL(10,2)
AS
BEGIN
UPDATE emp5
SET Esalary = @NewSalary
WHERE EID = @EID
END;
sp_UpdateSalary 102, 400000


--6. Create a stored procedure that takes a search string parameter (e.g., 'a') and returns
--all employees whose names start with that letter.
CREATE PROCEDURE sp_SearchEmployee
@SearchString VARCHAR(20)
AS 
BEGIN
SELECT *
FROM emp5
WHERE Ename LIKE @SearchString + '%'
END
sp_SearchEmployee 'v'

--7. Create a stored procedure that calculates and returns the average salary of all
--employees in the Employee table.
CREATE PROCEDURE sp_AverageSalary
AS
BEGIN
SELECT AVG(Esalary) AS AverageSalary
FROM emp5
END
sp_AverageSalary

--8. Create a stored procedure that takes two input parameters, MinSalary and
--MaxSalary, and returns all employees whose salary falls within that range.
CREATE PROCEDURE sp_SalaryRange
@MinSalary DECIMAL(10,2),
@Maxsalary DECIMAL(10,2)
AS
BEGIN
SELECT *
FROM emp5
WHERE Esalary BETWEEN @MinSalary AND @MaxSalary
END
EXEC sp_SalaryRange 300000, 350000


--9. Create a stored procedure that takes a ProjectID and a new Status string (e.g.,
--'Completed') as input parameters and updates the status of that project in the
--Project table.

CREATE PROCEDURE sp_UpdateProject
 @PID INT,
 @NewPname VARCHAR(20)
AS
BEGIN
UPDATE project
SET Pname = @NewPname
WHERE PID = @PID
END
 sp_UpdateProject 111, 'New DevOps'

select * from project


--10.Create a stored procedure that takes a City / Location name as an input parameter
--and displays the total number of departments located in that city.
CREATE PROCEDURE sp_DepartmentCount
@Dname VARCHAR(20)
AS
BEGIN
SELECT COUNT(*) AS TotalDepartments
FROM department
WHERE Dname = @Dname
END
EXEC sp_DepartmentCount 'IT'