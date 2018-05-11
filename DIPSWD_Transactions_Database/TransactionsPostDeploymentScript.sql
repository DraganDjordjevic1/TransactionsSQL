/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


if '$(LoadTestData)' = 'true'

BEGIN 

DELETE FROM Account;
DELETE FROM Log;

INSERT INTO Account ( AcctNo, Fname, Lname, CreditLimit, Balance) VALUES

(123, 'Dragan', 'Djordjevic', $150.00, $350.00),
(124, 'Nicholas', 'Ainsworth', $100.00, $600.00),
(125, 'Lucais', 'Smith', $350.00, $1000.00)

INSERT INTO Log (OrigAcct, RecAcct, Amount, LogDateTime) VALUES
(
123, 124, $35.00,
CONVERT(DATETIME, '06 MAY 2018 11:02:23:000', 113)
),

(
124, NULL, $20.00,
CONVERT(DATETIME, '10 MAY 2018 11:02:23:000', 113)
),

(
125, 123, $35.99,
CONVERT(DATETIME, '04 MAY 2018 08:22:46:000', 113)
);



END;