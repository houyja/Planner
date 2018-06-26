CREATE TABLE [dbo].[Calendar_CalendarItemType]
(
	[CalendarItemTypeID] INT NOT NULL PRIMARY KEY, 
    [ItemTypeName] VARCHAR(50) NOT NULL, 
    [ItemTypeDesc] VARCHAR(MAX) NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0
)
