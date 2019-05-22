create database EMS;
--creating the three tables
create table Employee(
ID int IDENTITY NOT NULL PRIMARY KEY,
firstname varchar(50) NOT NULL,
lastname varchar(50) NOT NULL,
SSN varchar(9) NOT NULL,
Dept_ID int NOT NULL,
FOREIGN KEY (Dept_ID) REFERENCES Department(ID)
)

create table Department(
ID int IDENTITY NOT NULL PRIMARY KEY,
Name varchar(50) NOT NULL,
Location varchar(50) NOT NULL
)

create table EmpDetails(
ID int IDENTITY NOT NULL PRIMARY KEY,
EmployeeID int NOT NULL,
FOREIGN KEY (EmployeeID) REFERENCES Employee(ID)
Salary int NOT NULL,
Address_1 varchar(9) NOT NULL,
Address_2 varchar(9) ,
City varchar(9) NOT NULL,
State varchar(9) NOT NULL,
Country varchar(9) NOT NULL,
)

--inserting 3 records for each table
insert into Department (Name, Location)
VALUES('Marketing', 'Houston'); 
insert into Department (Name, Location)
VALUES('Medical', 'Houston'); 
insert into Department (Name, Location)
VALUES('Business', 'Houston'); 
insert into Employee (firstname, lastname SSN, Dept_ID)
VALUES('Tina','Smith','111223333',1); 
insert into Employee (firstname, lastname SSN, Dept_ID)
VALUES('Sally','Smith','019283746',1); 
insert into Employee (firstname, lastname SSN, Dept_ID)
VALUES('Tom','Lee','123456789',1); 
insert into EmpDetails(EmployeeID, Salary, Address_1, Address_2, City, State, Country)
VALUES(1,50000,'Main Road', '', 'Houston', 'Texas', 'USA'); 
insert into EmpDetails(EmployeeID, Salary, Address_1, Address_2, City, State, Country)
VALUES(2,60000,'Main Road', '', 'Houston', 'Texas', 'USA'); 
insert into EmpDetails(EmployeeID, Salary, Address_1, Address_2, City, State, Country)
VALUES(3,40000,'Main Road', '', 'Houston', 'Texas', 'USA'); 

--displaying tables
select * from Employee;
select * from Department;
select * from EmpDetails;

--list all employees in Marketing
--displays names of employees uses Dept_ID = 1 which corresponds with the Marketing department
select firstname 
from Employee
where Employee.Dept_ID = 1;;

--report total salary of Marketing
--adds Salaries where the Dept_ID = 1 which means it is in the Marketing department
SELECT SUM(Salary)
FROM EmpDetails
WHERE Employee.Dept_ID = 1;

--report total employees by department
--displays names of employees. They are separated by their Dept_ID which corresponds with their department
select firstname 
from Employee
where Employee.Dept_ID = 1;

select firstname 
from Employee
where Employee.Dept_ID = 2;

select firstname 
from Employee
where Employee.Dept_ID = 3;

--increase salary of Tina Smith to 90000
--I increased the salary where the EmployeeID = 1 which is Tina's row
UPDATE EmpDetails
SET Salary = Salary + 90000
WHERE (EmployeedID = 1)




