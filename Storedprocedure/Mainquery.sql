create database Employee_Details;
use EmployeeDetails

Create table employee
(
 id int identity (1,1),
 Name varchar (50),
 Gender varchar(1),
 Salary int ,
 startDate Date,
 Note varchar(100),
 Primary key (id)
 )

 Create table department
 (
   DeptId int,
   Department1 varchar(123),
   Department2   varchar(125),
   Department3 varchar (255)
    foreign key (DeptId) references employee (id) on delete cascade
   )


   Insert into employee(Name,Gender,Salary,startDate,Note)
   Values ('Ajinkya','M',30000,'2017-01-01','NULL'),
           ('Priya','F',25000,'2017-02-01','NULL'),
		   ('Kunal','M',45000,'2018-01-01','NULL'),
		   ('Shubham','M',20000,'2019-01-01','NULL'),
		   ('Kirti','F',56000,'2019-02-02','NULL'),
		   ('Seema','F',35000,'2020-01-1','NULL');

	insert into department (DeptID,Department1,Department2,Department3)
	Values ( 1,'HR','NULL','Management'),
	        (2,'NULL','Finance','Management'),
			(3,'HR','Finance','NULL'),
			(4,'HR','Finance','Management'),
			(5,'NULL','Finance','NULL'),
			(6,'HR','NULL','Management');
 select * from employee
 select * from department


 
 Execute Er_GetAllEmployeedetails
 Execute Er_GetoneEmployeedetails 2
 Execute Er_Getupdatedeatils 2,'Sonal','F',30000,'2020-01-01','NULL' ,2