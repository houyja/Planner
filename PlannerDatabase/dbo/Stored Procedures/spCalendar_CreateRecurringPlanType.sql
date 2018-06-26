CREATE PROCEDURE [dbo].[spCalendar_CreateRecurringPlanType]
	@RecurringPlanTypeName varchar(50)
AS
	Declare @RecurringPlanTypeID int
	Select @RecurringPlanTypeID = Count(RecurringPlanTypeID) + 1 from Calendar_RecurringPlanType

	if exists(Select * From Calendar_RecurringPlanType where RecurringPlanTypeName = @RecurringPlanTypeName and IsDeleted = 0)
	BEGIN
		RaisError('Recurring Plan Type Name in Use', 16, 1)
	END

	Insert Into Calendar_RecurringPlanType(RecurringPlanTypeID, RecurringPlanTypeName) Values (@RecurringPlanTypeID, @RecurringPlanTypeName)
RETURN 0
