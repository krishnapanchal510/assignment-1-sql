-----------------------------assignment--------------------------------------------
CREATE DATABASE CompanyDB;

--2.
USE CompanyDB;
CREATE TABLE Employee (
    EmpID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Designation VARCHAR(50),
    Salary DECIMAL(10,2),
    City VARCHAR(50),
    Gender CHAR(1),
    JoiningDate DATE,
    Age INT)
    select * from Employee

-- 3. 
ALTER TABLE Employee ADD Email VARCHAR(100)

-- 4. 
ALTER TABLE Employee ALTER COLUMN Email VARCHAR(200)

-- 5. 
EXEC sp_rename 'Employee.City', 'Location', 'COLUMN'

-- 6. 
EXEC sp_rename 'Employee', 'EmployeeDetails'
EXEC sp_rename 'EmployeeDetails', 'Employee'

-- 7. 
ALTER TABLE Employee DROP COLUMN Email

-- 8. 
exec sp_help Employee

-- 9. 
ALTER TABLE Employee
ADD CONSTRAINT PK_Emp PRIMARY KEY (EmpID)

-- 10. 
ALTER TABLE Employee 
ALTER COLUMN FirstName VARCHAR(50) NOT NULL

-- 11. 
ALTER TABLE Employee 
ADD Email VARCHAR(200)
ALTER TABLE Employee 
ADD CONSTRAINT UQ_Email UNIQUE (Email)

-- 12. 
ALTER TABLE Employee ADD CONSTRAINT DF_Department DEFAULT 'General' FOR Department

-- 13. 
ALTER TABLE Employee ADD CONSTRAINT CHK_Salary CHECK (Salary >= 10000)

-- 14. 
ALTER TABLE Employee ADD CONSTRAINT CHK_Age CHECK (Age BETWEEN 18 AND 60)

-- 15. 
ALTER TABLE Employee DROP CONSTRAINT CHK_Salary

-- 16. 
ALTER TABLE Employee ADD Manager_EmpID INT
ALTER TABLE Employee ADD CONSTRAINT CHK_Manager CHECK (Manager_EmpID <> EmpID)

-- 17.
INSERT INTO Employee (EmpID, FirstName, LastName, Department, Designation, Salary, Location, Gender, JoiningDate, Age)
VALUES (1,'krishna','panchal','IT','Manager',50000,'Delhi','f','2020-01-01',35)

-- 18.
INSERT INTO Employee (EmpID, FirstName, LastName, Salary, Location, Gender, JoiningDate, Age)
VALUES (16,'pratham','Panchal',25000,'Mumbai','M','2021-05-01',28)

-- 19. 
UPDATE Employee SET Salary = Salary * 1.10 WHERE Department = 'IT'

-- 20. 
UPDATE Employee SET Designation = 'Senior Executive' WHERE EmpID = 5

-- 21. 
DELETE FROM Employee WHERE EmpID = 10

-- 22. 
DELETE FROM Employee WHERE Salary < 15000

-- 23. 
UPDATE Employee SET Location = 'Pune' WHERE Location = 'Mumbai'

-- 24. 
INSERT INTO Employee (EmpID, FirstName, LastName, Department, Salary, Location, Gender, JoiningDate, Age)VALUES 
(17,'','panchal','HR',20000,'Delhi','M','2022-01-01',30)

-- 25. 
SELECT * FROM Employee

-- 26. 
SELECT FirstName, LastName, Salary 
FROM Employee

-- 27. 
SELECT * FROM Employee 
WHERE Department = 'HR'

-- 28. 
SELECT DISTINCT Department 
FROM Employee

-- 29. 
SELECT COUNT(*) AS TotalEmployees 
FROM Employee

-- 30.
SELECT FirstName, Salary AS MonthlySalary 
FROM Employee

-- 31. 
SELECT * FROM Employee 
WHERE Gender = 'F'

-- 32.
SELECT TOP 5 * FROM Employee 
ORDER BY Salary DESC

-- 33.
SELECT * FROM Employee
WHERE Salary > 30000

-- 34.
SELECT * FROM Employee
WHERE Department = 'IT' AND Salary > 25000

-- 35. 
SELECT * FROM Employee
WHERE Department IN ('HR','Finance')

-- 36. 
SELECT * FROM Employee 
WHERE Salary BETWEEN 20000 AND 40000

-- 37. 
SELECT * FROM Employee
WHERE Location IN ('Delhi','Mumbai','Pune')

-- 38. 
SELECT * FROM Employee
WHERE FirstName LIKE 'A%'

-- 39. 
SELECT * FROM Employee
WHERE FirstName LIKE '%a'

-- 40. 
SELECT * FROM Employee 
WHERE Department <> 'Sales'

-- 41. 
SELECT Department, COUNT(*) AS EmpCount 
FROM Employee 
GROUP BY Department

-- 42. 
SELECT Department, AVG(Salary) AS AvgSalary 
FROM Employee 
GROUP BY Department

-- 43.
SELECT Department, MAX(Salary) AS MaxSalary 
FROM Employee 
GROUP BY Department

-- 44. 
SELECT Location, MIN(Salary) AS MinSalary 
FROM Employee 
GROUP BY Location

-- 45. 
SELECT Designation,SUM(Salary) AS TotalSalary 
FROM Employee
GROUP BY Designation

-- 46. 
SELECT Department 
FROM Employee 
GROUP BY Department
HAVING COUNT(*) > 3

-- 47. 
SELECT Department 
FROM Employee 
GROUP BY Department 
HAVING AVG(Salary) > 30000

-- 48. 
SELECT Location 
FROM Employee 
GROUP BY Location HAVING COUNT(*) > 2

-- 49. 
SELECT * FROM Employee 
ORDER BY Salary DESC

-- 50. 
SELECT * FROM Employee
ORDER BY Department ASC, Salary DESC




