CREATE PROCEDURE [dbo].[spCalendar_GetActiveRecurringPlanTypes]
AS
	SELECT * From Calendar_RecurringPlanType Where IsDeleted = 0
RETURN 0
