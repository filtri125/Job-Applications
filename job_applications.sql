
/*Subset of job application records inserted into the table `dbo.JobApplications`*/

USE [FilipJobApplications]
GO

INSERT INTO [dbo].[JobApplications]
           ([Company]
           ,[Position]
           ,[DateApplied]
           ,[ClosingDate]
           ,[ContactPerson]
           ,[Outcome])
     VALUES
		   ('Chemist Warehouse Silverdale', 'Team Member', '22/07/2025',
		   'N/A', 'N/A', 'CV drop-off. Potentially roles available (currently in process of conducting interviews).'),
           ('Fidelity Life', 'Existing Business Consultant', '30/07/2025',
		   '08/08/2025', 'Ragini', 'Unsuccessful'), 
		   ('Fidelity Life', 'Remediation Support Specialist', '30/07/2025',
		   '11/08/2025', 'Liza Johnson', 'Unsuccessful'),
		   ('Vulcan', 'IT Graduate - Data', '02/08/2025',
		   '12/09/2025', 'N/A', 'Awaiting'),
		   ('BNZ Takapuna', 'Customer Service Banker', '03/08/2025',
		   '04/08/2025', 'N/A', 'Awaiting'),
		   ('BNZ Auckland HQ', 'Insights Analyst', '04/08/2025',
		   '07/08/2025', 'N/A', 'Awaiting'),
		   ('BNZ Auckland HQ', 'Cash Analyst', '04/08/2025',
		   '12/08/2025', 'N/A', 'Awaiting'),
		   ('BP Warkworth', 'Customer Service Representative', '04/08/2025',
		   '05/08/2025', 'N/A', 'Awaiting'),
		   ('Mighty Ape', 'Customer Service Team Member', '05/08/2025',
		   'N/A', 'Ella Walter', 'Awaiting'),
		   ('Randstad Digital', 'Data Analyst Contract Role', '05/08/2025',
		   'N/A', 'Amaan Kazmi', 'Consultant needs to call me back. Awaiting'),
		   ('Fidelity Life', 'New Business Specialist', '05/08/2025',
		   'N/A', 'Shea Wilkinson', 'Awaiting. Potential interview.'),
		   ('Hirestaff', 'Candidate Registration', '11/08/2025',
		   'N/A', 'Cat Peters', 'Registered on their platform.'),
		   ('Emergent NZ', 'Candidate Registration', '11/08/2025',
		   'N/A', 'Jasmine Roberts', 'Registered on their platform.'),
		   ('Emergent NZ', 'Graduate Opportunities', '11/08/2025',
		   'N/A', 'Jasmine Roberts', 'Unsuccessful'),
		   ('Emergent NZ', 'Temps Temps Temps', '13/08/2025',
		   'N/A', 'Jasmine Roberts', 'Awaiting'),
		   ('Emergent NZ', 'Banking Administrator', '13/08/2025',
		   'N/A', 'Jasmine Roberts', 'Awaiting')
		  ;

/*Query which returns all of the job applications that I have completed*/

GO

SELECT * FROM JobApplications

/*122 jobs applied in total*/

/* Troubleshooting Issues */

/*Ran into issues with the string in the `Outcome` column being truncated on two 
seperate occassions, but fixed it by increasing the max field width allowed
from 50 to 100 then from 100 to 250 subsequently.*/

/*I was forced to delete a row as I made an error in the `Outcome` column as follows:*/

/*Ran this query to delete an application record which I made a mistake on.*/

/*DELETE FROM JobApplications 
WHERE Company = 'Suncorp';*/

/*However, when I did this, I realised that the auto-increment jumped by one in the subsequent row
despite there now being a row less. To fix this, I re-created the ApplicationID row in the 
'Design' table and re-executed the database.*/

/*I used the UPDATE clause to change the `Outcome` column to 'Unsuccessful' for the New Business Specialist
role at Fidelity Life as follows:*/

UPDATE JobApplications
SET Outcome = 'Unsuccessful'
WHERE Company = 'Fidelity Life'
AND Position = 'New Business Specialist';

/*27/08/2025*/
/* Today, I noticed that my database contained 12 duplicate records. I used the DISTINCT keyword to confirm this:*/

SELECT DISTINCT Company
FROM JobApplications;

SELECT DISTINCT Company, Position
FROM JobApplications;

SELECT Company, Position
FROM JobApplications
WHERE Company = 'Fidelity Life'

SELECT Company, Position
FROM JobApplications
WHERE Company = 'BP Warkworth'

SELECT Company, Position
FROM JobApplications
WHERE Company = 'Chemist Warehouse Silverdale'

SELECT Company, Position
FROM JobApplications
WHERE Company = 'Hirestaff'

SELECT Company, Position
FROM JobApplications
WHERE Company = 'Randstad Digital'

SELECT Company, Position
FROM JobApplications
WHERE Company = 'Mighty Ape'

SELECT Company, Position
FROM JobApplications
WHERE Company = 'Vulcan'

SELECT Company, Position
FROM JobApplications
WHERE Company = 'BNZ Auckland HQ'

SELECT Company, Position
FROM JobApplications
WHERE Company = 'BNZ Takapuna'







