USE MillcreekCanyon
GO

/* Delete an existing reservation and add the availabilty back */

CREATE PROCEDURE dbo.sp_DeleteReservation
	@SiteNum AS varchar(3),
	@ReservationBegin AS [date],
	@ReservationEnd AS [date]
AS
BEGIN
	DELETE FROM Reservation 
	WHERE SiteNum = @SiteNum
	  AND ReservationDate BETWEEN @ReservationBegin AND @ReservationEnd

	INSERT INTO [Availability]
	SELECT @SiteNum, TheDate AS AvailableDate
	FROM Calendar 
	WHERE TheDate BETWEEN @ReservationBegin AND @ReservationEnd
END
GO
