CREATE TABLE [dbo].[Calendar_SubTask]
(
	[SubTaskID] BIGINT NOT NULL PRIMARY KEY,
	[CalendarItemID] BIGINT NOT NULL, 
    [SubTaskTypeID] INT NOT NULL, 
    [SubTaskStatus] BIT NULL, 
	[MinMaxTarget] INT NULL, 
    [MinMaxValue] INT NULL,
    [DateClosed] DATETIME NULL, 
    CONSTRAINT [FK_Calendar_SubTask_Caledar_Task] FOREIGN KEY ([CalendarItemID]) REFERENCES [Calendar_Task]([CalendarItemID]), 
    CONSTRAINT [FK_Calendar_SubTask_Calendar_SubTaskType] FOREIGN KEY ([SubTaskTypeID]) REFERENCES [Calendar_SubTaskType]([SubTaskTypeID])
)
