CREATE PROCEDURE [dbo].[spCalendar_EditRecurringPlanType]
	@RecurringPlanTypeID int,
	@RecurringPlanTypeName varchar(50)
AS
	if exists(Select * From Calendar_RecurringPlanType where RecurringPlanTypeName = @RecurringPlanTypeName and RecurringPlanTypeID <> @RecurringPlanTypeID and IsDeleted = 0)
	BEGIN
		RaisError('Recurring Plan Type Name in Use', 16, 1)
	END

	Update Calendar_RecurringPlanType
	Set RecurringPlanTypeName = @RecurringPlanTypeName
	Where RecurringPlanTypeID = @RecurringPlanTypeID
RETURN 0
