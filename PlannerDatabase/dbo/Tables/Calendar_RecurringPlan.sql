CREATE TABLE [dbo].[Calendar_RecurringPlan]
(
	[RecurringPlanID] BIGINT NOT NULL PRIMARY KEY, 
    [RecurringItemID] BIGINT NOT NULL, 
    [RecurringPlanType] INT NOT NULL, 
    [RecurringValue] INT NOT NULL, 
    CONSTRAINT [FK_Calendar_RecurringPlan_Calendar_RecurringPlanType] FOREIGN KEY ([RecurringPlanType]) REFERENCES [Calendar_RecurringPlanType]([RecurringPlanTypeID]), 
    CONSTRAINT [FK_Calendar_RecurringPlan_Calendar_RecurringItem] FOREIGN KEY ([RecurringItemID]) REFERENCES [Calendar_RecurringItem]([RecurringItemID])
)
