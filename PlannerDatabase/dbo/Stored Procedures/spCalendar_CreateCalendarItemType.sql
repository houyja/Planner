CREATE PROCEDURE [dbo].[spCalendar_CreateCalendarItemType]
	@ItemTypeName varchar(50),
	@ItemTypeDesc varchar(max)
AS
	Declare @ItemTypeID int

	Select @ItemTypeID = Max(CalendarItemTypeID) + 1 From Calendar_CalendarItemType

	If Exists (Select * From Calendar_CalendarItemType Where ItemTypeName = @ItemTypeName and IsDeleted = 0)
	BEGIN
		RaisError('Item Type Name in Use', 16, 1)
	END

	Insert Into Calendar_CalendarItemType(CalendarItemTypeID, ItemTypeName, ItemTypeDesc) Values (@ItemTypeID, @ItemTypeName, @ItemTypeDesc)
RETURN 0
