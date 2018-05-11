CREATE TABLE [dbo].[Account]
(
	[AcctNo] INT NOT NULL,
	[Fname] NVARCHAR(50) NOT NULL,
	[Lname] NVARCHAR(50) NOT NULL,
	[CreditLimit] MONEY,
	[Balance] MONEY,

	PRIMARY KEY (AcctNo),
	CONSTRAINT U_Names UNIQUE (Fname, Lname),
	CHECK (CreditLimit>0),
	CHECK (Balance>CreditLimit),

)
