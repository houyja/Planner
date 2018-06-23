CREATE TABLE [dbo].[Tasks_ScheduleRule]
(
	[ScheduleID] BIGINT NOT NULL PRIMARY KEY, 
    [TaskID] BIGINT NULL, 
    [ScheduleTypeID] INT NOT NULL, 
    [ScheduleValue] INT NULL, 
    CONSTRAINT [FK_Tasks_ScheduleRule_Tasks_TaskID] FOREIGN KEY ([TaskID]) REFERENCES [Tasks_Task]([TaskID]), 
    CONSTRAINT [FK_Tasks_ScheduleRule_Tasks_ScheduleType] FOREIGN KEY ([ScheduleTypeID]) REFERENCES [Tasks_ScheduleType]([ScheduleTypeID])
)
