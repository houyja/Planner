CREATE PROCEDURE [dbo].[spCalendar_EditSubTaskType]
	@SubTaskTypeID int,
	@SubTaskTypeName varchar(50),
	@SubTaskTypeDesc varchar(Max)
AS
	If Exists(Select * From Calendar_SubTaskType Where SubTaskTypeName = @SubTaskTypeName and SubTaskTypeID <> @SubTaskTypeID and IsDeleted = 0)
	BEGIN
		RaisError('Sub Task Type Name in Use', 16, 1)
	END

	Update Calendar_SubTaskType
	Set SubTaskTypeName = @SubTaskTypeName,
	SubTaskTypeDesc = @SubTaskTypeDesc
	Where SubTaskTypeID = @SubTaskTypeID
RETURN 0
