CREATE TABLE [dbo].[Calendar_Task]
(
	[CalendarItemID] BIGINT NOT NULL PRIMARY KEY, 
    [OriginalDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_Calendar_Task_Calendar_CalendarItem] FOREIGN KEY ([CalendarItemID]) REFERENCES [Calendar_CalendarItem]([CalendarItemID]) 
)
