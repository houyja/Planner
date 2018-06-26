CREATE TABLE [dbo].[Calendar_SubTaskType]
(
	[SubTaskTypeID] INT NOT NULL PRIMARY KEY, 
    [SubTaskTypeName] VARCHAR(50) NOT NULL, 
    [SubTaskTypeDesc] VARCHAR(MAX) NULL, 
    [isDeleted] BIT NOT NULL DEFAULT 0
)
