CREATE PROCEDURE [dbo].[spCalendar_GetActiveCalendarItemTypes]
AS
	Select * From Calendar_CalendarItemType Where IsDeleted = 0
RETURN 0
