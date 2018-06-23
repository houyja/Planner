CREATE TABLE [dbo].[Tasks_Objective]
(
	[ObjectiveID] BIGINT NOT NULL PRIMARY KEY, 
    [TaskID] BIGINT NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    [Description] VARCHAR(MAX) NULL,
	[ObjectiveTypeID] INT NOT NULL, 
    [Status] BIT NULL DEFAULT Null, 
    [MinMaxValue] BIGINT NULL DEFAULT Null, 
    [MinMaxResult] BIGINT NULL DEFAULT Null, 
    CONSTRAINT [FK_Tasks_Objective_Tasks_Task] FOREIGN KEY ([TaskID]) REFERENCES [Tasks_Task]([TaskID]), 
    CONSTRAINT [FK_Tasks_Objective_Tasks_ObjectiveType] FOREIGN KEY ([ObjectiveTypeID]) REFERENCES [Tasks_ObjectiveType]([ObjectiveTypeID]) 
)
