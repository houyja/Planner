CREATE PROCEDURE [dbo].[spCalendar_EditCalendarItemType]
	@ItemTypeID int,
	@ItemTypeName varchar(50),
	@ItemTypeDesc varchar(max)
AS

	If Exists (Select * From Calendar_CalendarItemType Where ItemTypeName = @ItemTypeName and CalendarItemTypeID <> @ItemTypeID and IsDeleted = 0)
	BEGIN
		RaisError('Item Type Name in Use', 16, 1)
	END

	Update Calendar_CalendarItemType
	Set ItemTypeName = @ItemTypeName, ItemTypeDesc = @ItemTypeDesc
	Where CalendarItemTypeID = @ItemTypeID
RETURN 0
