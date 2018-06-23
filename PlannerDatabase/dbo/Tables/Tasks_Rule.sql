CREATE TABLE [dbo].[Tasks_Rule]
(
	[RuleID] BIGINT NOT NULL , 
	[AccountID] INT NULL, 
    [OriginalTaskID] BIGINT NOT NULL, 
    [StartDate] DATETIME NOT NULL, 
    [EndDate] DATETIME NULL DEFAULT Null, 
    CONSTRAINT [PK_Tasks_Rule] PRIMARY KEY ([RuleID]), 
    CONSTRAINT [FK_Tasks_Rule_Accounts_Core] FOREIGN KEY ([AccountID]) REFERENCES [Accounts_Core]([AccountID]), 
    CONSTRAINT [FK_Tasks_Rule_Tasks_Task] FOREIGN KEY ([OriginalTaskID]) REFERENCES [Tasks_Task]([TaskID]) 
)
