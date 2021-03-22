USE [employeeDetails]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Alter PROCEDURE [dbo].[Er_GetAllEmployeedetails] 
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 select id, Name,Gender,image,Salary,StartDate,Notes,DeptID,Department1,Department2,Department3 from employeeDetails
	 left join DepartmentDeatils on DepartmentDeatils.DeptID=employeeDetails.id

END




