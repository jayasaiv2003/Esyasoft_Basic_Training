create database student

use student

CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');

---1. Show a list of all student names (unique only).

select Name from Students2024 union select Name from Students2025

--2. Show a list of all student names (including duplicates).

select Name from Students2024 union all select Name from Students2025


--1. Display employee names in UPPERCASE and LOWERCASE.
  

CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');

-- 1. Display employee names in UPPERCASE and LOWERCASE.

select upper(Name) from Employees;

select lower(Name) from Employees;

--2. Find the length of each employee’s name.

select len(Name) as length_of_name from Employees

--3. Show only the first 3 letters of each name.

select substring(Name,1,3) from Employees

--4. Replace Finance department with Accounts.

select replace(Department, 'Finance', 'Accounts') from Employees

select* from Employees

--5. Create a new column showing "Name - Department" using CONCAT.

select* , concat(Name,'-', Department) as name_department from Employees


CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');

-- 1. Show today’s date using GETDATE().
   
select getdate()

-- 2. Find the duration (in days) of each project using DATEDIFF.

select* , DATEDIFF(day,StartDate, EndDate) as time_taken from Projects

--3. Add 10 days to each project’s EndDate using DATEADD.

SELECT DATEADD(day, 10, EndDate) from Projects

--4. Find how many days are left until each project ends. (Hint: Use DATEDIFF with GETDATE())

select* , DATEDIFF(day, GETDATE(), EndDate) as days_remaining from Projects
select* , DATEDIFF(month, GETDATE(), EndDate) as days_remaining from Projects
select* , DATEDIFF(year, GETDATE(), EndDate) as days_remaining from Projects

--CAST, CONVERT, CASE



##### Tasks:


--1. Convert today’s date into DD/MM/YYYY format using CONVERT.

select convert (varchar(10), getdate(),103) as Date_DDMMYYYY

--2. Convert a float 123.456 into an integer using CAST.

select cast (123.456 as INT) as c

--3. For employees (from Employees table above), categorize them:

--* 	If Dept = IT → show Tech Team

--* 	If Dept = HR → show Human Resources

select Name , case when Department= 'IT' THEN 'Tech team' 
                    when Department = 'HR' THEN 'Human Resources'
					else 'other' end as Category 
					from Employees

