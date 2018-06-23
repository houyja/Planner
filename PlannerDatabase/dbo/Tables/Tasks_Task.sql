CREATE TABLE [dbo].[Tasks_Task]
(
	[TaskID] BIGINT NOT NULL PRIMARY KEY, 
    [TaskName] VARCHAR(50) NOT NULL, 
    [TaskDescription] VARCHAR(MAX) NULL, 
    [Status] BIT NULL, 
    [RuleID] BIGINT NULL, 
    [CreatedOn] DATETIME NOT NULL, 
    [EditedOn] DATETIME NOT NULL, 
    [OriginalDueDate] DATETIME NULL, 
    [CurrentDueDate] DATETIME NULL, 
    [AccountID] INT NOT NULL, 
    CONSTRAINT [FK_Tasks_Task_Accounts_Core] FOREIGN KEY ([AccountID]) REFERENCES [Accounts_Core]([AccountID]), 
    CONSTRAINT [FK_Tasks_Task_Tasks_Rule] FOREIGN KEY ([RuleID]) REFERENCES [Tasks_Rule]([RuleID]), 
)