USE [Employee_Details]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Er_GetAllEmployeedetails] 
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select id,Name,Gender,Salary,startDate,Note,DeptId,Department1,Department2,Department3 from employee
  left join department on employee.id = department.DeptId
  

END




