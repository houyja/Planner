CREATE PROCEDURE [dbo].[spCalendar_CreateSubTaskType]
	@SubTaskTypeName varchar(50),
	@SubTaskTypeDesc varchar(Max)
AS
	Declare @SubTaskTypeID int
	Select @SubTaskTypeID = Count(SubTaskTypeID) + 1 From Calendar_SubTaskType

	if exists (Select * From Calendar_SubTaskType Where SubTaskTypeName = @SubTaskTypeName and IsDeleted = 0)
	BEGIN
		RaisError('Name In Use', 16, 1)
	END

	Insert Into Calendar_SubTaskType(SubTaskTypeID, SubTaskTypeName, SubTaskTypeDesc) Values (@SubTaskTypeID, @SubTaskTypeName, @SubTaskTypeDesc)
RETURN 0
