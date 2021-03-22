Use [employeeDetails]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Alter PROCEDURE [dbo].[Er_Getupdatedeatils] 
(
@id int,
@name  varchar (50),
@gender  varchar (1),
@image varchar (255),
@salry int,
@startdate date,
@note  varchar (100),
@department_id int,
@Department1 varchar (80),
@Department2 varchar (80),
@Department3 varchar (80)

)

AS
BEGIN
	DECLARE @row_count INTEGER
	DECLARE @newidentity INTEGER


 update employeeDetails set Name =@name,Gender=@gender, image=@image, Salary = @salry ,startDate=@startdate, Notes=@note where id =@id;
 update DepartmentDeatils set Department1=@Department1,Department2=@Department2,Department3=@Department3 where DeptID =@id;
 	 select Name,Gender,image,Salary,StartDate,Notes,DeptID,Department1,Department2,Department3 from employeeDetails left join DepartmentDeatils on DepartmentDeatils.DeptID=employeeDetails.id

 SELECT @row_count = @@ROWCOUNT
SELECT @newidentity=@@IDENTITY

	return @newidentity

end

