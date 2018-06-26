CREATE TABLE [dbo].[Calendar_CalendarItem]
(
	[CalendarItemID] BIGINT NOT NULL PRIMARY KEY, 
    [Account] INT NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    [Desc] VARCHAR(MAX) NULL, 
    [ScheduledDate] DATETIME NOT NULL, 
    [CalendarItemType] INT NOT NULL, 
    [Status] BIT NULL, 
    [DateClosed] DATETIME NULL, 
    [RecurringPlanID] BIGINT NULL, 
    [IsActive] BIT NULL, 
    CONSTRAINT [FK_CalendarItem_Accounts_Core] FOREIGN KEY ([Account]) REFERENCES [Accounts_Core]([AccountID]), 
    CONSTRAINT [FK_Tasks_CalendarItem_Tasks_CalendarItemType] FOREIGN KEY ([CalendarItemType]) REFERENCES [Calendar_CalendarItemType]([CalendarItemTypeID]), 
    CONSTRAINT [FK_Calendar_CalendarItem_Calendar_RecurringPlan] FOREIGN KEY ([RecurringPlanID]) REFERENCES [Calendar_RecurringPlan]([RecurringPlanID]) 
)
