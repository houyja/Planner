CREATE PROCEDURE [dbo].[spCalendar_DeleteSubTaskType]
	@SubTaskTypeID int
AS
	Update Calendar_SubTaskType
	Set IsDeleted = 1
	Where SubTaskTypeID = @SubTaskTypeID
RETURN 0
