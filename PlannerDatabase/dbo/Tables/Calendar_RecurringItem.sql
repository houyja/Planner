CREATE TABLE [dbo].[Calendar_RecurringItem]
(
	[RecurringItemID] BIGINT NOT NULL PRIMARY KEY, 
    [CalendarItemID] BIGINT NOT NULL, 
    [StartDate] DATETIME NOT NULL, 
    [EndDate] DATETIME NULL, 
    CONSTRAINT [FK_Calendar_RecurringItem_Calendar_CalendarItem] FOREIGN KEY ([CalendarItemID]) REFERENCES [Calendar_CalendarItem]([CalendarItemID])
)
