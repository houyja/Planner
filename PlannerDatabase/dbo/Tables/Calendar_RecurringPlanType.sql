CREATE TABLE [dbo].[Calendar_RecurringPlanType]
(
	[RecurringPlanTypeID] INT NOT NULL PRIMARY KEY, 
    [RecurringPlanTypeName] VARCHAR(50) NOT NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0
)
