CREATE PROCEDURE [dbo].[spCalendar_GetActiveSubTaskTypes]

AS
	Select * From Calendar_SubTaskType Where IsDeleted = 0
RETURN 0
