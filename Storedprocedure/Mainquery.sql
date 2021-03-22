Create database employeeDetails
use employeeDetails

Create table employeeDetails
(
id int identity(1,1),
Name varchar(80),
Gender varchar(1),
Image varchar(255),
Salary int,
StartDate Date,
Notes varchar(255)
primary key(id),
Constraint employee unique(Name)
)

Create table DepartmentDeatils
(
DeptID int identity(1,1),
Department1 Varchar (100),
Department2 Varchar (100),
Department3 Varchar (100),
primary key(DeptID)

)
insert into DepartmentDeatils(Department1,Department2,Department3)values('HR','NULL','Management'),
                                                                         ('NULL','Finance','Management'),
                                                                          ('HR','NULL','Management'),
																		  ('NULL','NULL','Management');



  Insert into employeeDetails(Name,Gender,image,Salary,startDate,Notes)
   Values ('Ajinkya','M',NULL,30000,'2017-01-01','NULL'),
           ('Priya','F',NULL,25000,'2017-02-01','NULL'),
		   ('Kunal','M',NULL,45000,'2018-01-01','NULL'),
		   ('Shubham','M',NULL,20000,'2019-01-01','NULL');

  
	update employeeDetails set Image = 'XYZ'
	update employeeDetails set Notes = 'ABC'
		
 select * from employeeDetails
 select * from DepartmentDeatils;

Execute.Er_GetAllEmployeedetails
Execute.Er_GetoneEmployeedetails 2
Execute Er_Getupdatedeatils 2,'Krishna','M','ASD',3000,'2019-02-02','XYZ',2,'HR','Finanace','NULL';
Execute AddEmployeeDetail 'Priya','F','PQR',25000,'2016-01-01','ASD','Fianance','Management','NULL';
Execute DeleteEmployeeDetail 15