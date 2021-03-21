USE[employeeDetails]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Alter   PROCEDURE [dbo].[AddEmployeeDetail]
(
	-- Add the parameters for the stored procedure here
	@EmpName		varchar(255),
	@Gender			char(1),
	@salary	int,
	@startdate		Date,
	@Notes       varchar(100),
	@department_id int,
	@empid int

)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	INSERT INTO employee(Name, Gender, Salary, startDate, Note)
	VALUES(@EmpName, @Gender, @salary, @startdate, @Notes)
	select id,Name,Gender,Salary,startDate,Department.Department_id,DepartmentName from employee
  left join Employee_Department on employee.id = Employee_Department.EmpDept_id
  left join Department on Employee_Department.Department_id = Department.Department_id;
END

