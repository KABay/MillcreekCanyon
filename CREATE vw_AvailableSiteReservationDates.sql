USE MillcreekCanyon
GO

CREATE VIEW dbo.vw_AvailableSiteReservationDates
AS
SELECT TOP (100) PERCENT SiteNum, AvailableDate
FROM dbo.[Availability]
GO

