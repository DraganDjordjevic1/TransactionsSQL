CREATE TABLE [dbo].[Log]
(
	[OrigAcct] INT NOT NULL,
	[LogDateTime] DATETIME NOT NULL,
	[RecAcct] INT NULL,
	[Amount] MONEY NOT NULL,

	CONSTRAINT CPK_Log PRIMARY KEY (LogDateTime, OrigAcct),
	FOREIGN KEY (OrigAcct) REFERENCES Account(AcctNo),
	FOREIGN KEY (RecAcct) REFERENCES Account(AcctNo)
)
