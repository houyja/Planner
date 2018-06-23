CREATE TABLE [dbo].[Tasks_ObjectiveType]
(
	[ObjectiveTypeID] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL Unique, 
    [Description] VARCHAR(MAX) NULL
)
