USE MillcreekCanyon
GO

CREATE TABLE dbo.[Availability](
	SiteNum varchar(3) NOT NULL,
	AvailableDate [date] NOT NULL
) ON [PRIMARY]
GO

/*
-- (re)Populate/refresh Availability from Sites and Calendar

DELETE FROM Availability;
GO

INSERT INTO Availability 
SELECT SiteNum, TheDate AS AvailableDate
FROM Site
	CROSS JOIN Calendar
GO
*/
