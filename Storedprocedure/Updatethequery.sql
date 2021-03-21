Use [Employee_Details]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Er_Getupdatedeatils] 
(
@id int,
@name  varchar (50),
@gender  varchar (1),
@salry int,
@startdate date,
@note  varchar (100),
@department_id int

)

AS
BEGIN
	DECLARE @row_count INTEGER


 update employee  set  Name =@name, Gender=@gender, Salary=@salry, startDate=@startdate, Note=@note  where id=@id
 	SELECT @row_count = @@ROWCOUNT

	select id,Name,Gender,Salary,startDate,DeptId,Department1,Department2,Department3 from employee
  left join department on employee.id = department.DeptId;
 
return @row_count
end
