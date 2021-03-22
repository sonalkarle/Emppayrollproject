USE[employeeDetails]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Alter PROCEDURE [dbo].[AddEmployeeDetail]
(
	-- Add the parameters for the stored procedure here
	@EmpName		varchar(255),
	@Gender			char(1),
	@image varchar(255),
	@salary	int,
	@startdate		Date,
	@Notes       varchar(100),
    @department1 varchar(80),
	@department2 varchar(80),
	@department3 varchar(80)
	

)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	INSERT INTO employeeDetails(Name, Gender,image, Salary, startDate, Notes)
	VALUES(@EmpName, @Gender,@image, @salary, @startdate, @Notes)
	Insert into DepartmentDeatils(Department1,Department2,Department3)
	values (@department1,@department2,@department3)
      	 select Name,Gender,image,Salary,StartDate,Notes,DeptID,Department1,Department2,Department3 from employeeDetails left join DepartmentDeatils on DepartmentDeatils.DeptID=employeeDetails.id

END

