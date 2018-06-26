CREATE PROCEDURE [dbo].[spCalendar_DeleteRecurringPlanType]
	@RecurringPlanTypeID int
AS
	Update Calendar_RecurringPlanType
	Set IsDeleted = 1
	Where RecurringPlanTypeID = @RecurringPlanTypeID
RETURN 0
