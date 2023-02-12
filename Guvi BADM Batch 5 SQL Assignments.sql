# Desiging and entering values for multiple Tables for a database 


Create Table Clients
(
Client_ID int Primary key,Cname varchar(40) NOT NULL, Address varchar(30), Email varchar(30) Unique, Phone bigint, Business varchar(20) Not Null );

Insert into Clients Values
(1001, 'ACME Utilities', 'Noida', 'contact@acmeutil.com', 9567880032, 'Manufacturing'),
(1002, 'Trackon Consultants', 'Mumbai', 'consult@trackon.com', 8734210090, 'Consultant'),
(1003, 'Moneysaver Distributors', 'Kolkata', 'save@moneysaver.com', 7799886655,'Reseller'),
(1004, 'Lawful Corp', 'Chennai', 'justice@lawful.com',9210342219, 'Professional')

Select * from Clients 

Create table Departments
(
Deptno int Primary key, Dname varchar (15) Not Null, Loc varchar (20));
Insert into Departments Values 
(10, 'Design','Pune'),
(20,'Development','Pune'),
(30,'Testing','Mumbai'),
(40,'Document','Mumbai')
Select * from Departments

Create table Employees
(
Empno int Primary key, Ename varchar(20) NOT NULL, JOb varchar(15), Salary int Check (Salary > 0), Deptno int Foreign Key References Departments(Deptno));

Insert into Employees Values
(7001,'Sandeep','Analyst',25000,10),
(7002,'Rajesh','Designer',30000,10),
(7003,'Madhav','Developer',40000,20),
(7004,'Manoj','Developer',40000,20),
(7005,'Abhay','Designer',35000,10),
(7006,'Uma','Tester',30000,30),
(7007,'Gita','Tech.Writer',30000,40),
(7008,'Priya','Tester',35000,30),
(7009,'Nutan','Developer',45000,20),
(7010,'Smita','Analyst',20000,10),
(7011,'Anand','ProjectMgr',65000,10)

Select * from Employees

Create Table Projects
( Project_ID int Primary Key, Descr varchar(30) Not Null, Start_Date Date, Planned_End_Date Date, Actual_End_Date Date , Budget bigint CHECK (Budget > 0), Client_ID int Foreign Key References Clients(Client_ID));

Insert into Projects Values
(401, 'Inventory', '01-Apr-11', '01-oct-11', '31-oct-11', 150000, 1001),
(402, 'Accounting', '01-Aug-11', '01-Jan-12',NULL, 500000,1002),
(403, 'Payroll', '01-Oct-11', '31-Dec-11',NULL, 75000, 1003),
(404, 'Contact Management', '01-Nov-11', '31-Dec-11',NULL, 50000, 1004);

Select * from Projects

Create Table EmpProjectTasks
( Project_ID int Foreign Key References Projects(Project_ID), Empno int Foreign Key References Employees(Empno),Start_Date Date,End_Date Date, Task varchar(25) Not Null, Status Varchar(15) Not Null , Primary Key (Project_ID, Empno));
Select * from EmpProjectTasks 

Insert into EmpProjectTasks Values
(401,7001,'01-Apr-11','20-Apr-11','System Analysis','Completed'), 
(401,7002,'21-Apr-11','30-May-11','System Design','Completed'),
(401,7003,'01-Jun-11','15-Jul-11','Coding','Completed'),
(401,7004,'18-Jul-11','01-Sep-11','Coding','Completed'),
(401,7006,'03-Sep-11','15-Sep-11','Testing','Completed'),
(401,7009,'18-Sep-11','05-Oct-11','Code Change','Completed'),
(401,7008,'06-Oct-11','16-Oct-11','Testing','Completed'),
(401,7007,'06-Oct-11','22-Oct-11','Documentation','Completed'),
(401,7011,'22-Oct-11','31-Oct-11','Sign off','Completed'),
(402,7010,'01-Aug-11','20-Aug-11','System Analysis','Completed'),
(402,7002,'22-Aug-11','30-Sep-11','System Design','Completed'),
(402,7004,'01-Oct-11','','Coding','In Progress');

Select * from Clients
Select * from Departments
Select * from Employees	
Select * from EmpProjectTasks
Select * from Projects

# Requirements

#1 
Select * from Clients Where Business='Consultant'

#2 
Select * from employees Where JOb != 'Developer'

#3
Select * from Projects Where Budget > 100000

#4
Select * from EmpProjectTasks Where Status ='Completed'

#5 
Select * from Employees Where Ename Like 'M%'

#6
Select * from Employees Where Ename Like '%a'

#7 
Select * from 

