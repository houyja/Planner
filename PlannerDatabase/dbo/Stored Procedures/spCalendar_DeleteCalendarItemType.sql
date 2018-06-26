CREATE PROCEDURE [dbo].[spCalendar_DeleteCalendarItemType]
	@ItemTypeID int
AS
	Update Calendar_CalendarItemType
	Set IsDeleted = 1
	Where CalendarItemTypeID = @ItemTypeID
RETURN 0
