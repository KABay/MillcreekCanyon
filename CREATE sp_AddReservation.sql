USE MillcreekCanyon
GO

/* Add a new reservation and delete availability for a site */

CREATE PROCEDURE AddReservation
	@SiteNum AS varchar(3),
	@ReservationBegin AS [date],
	@ReservationEnd AS [date],
	@ReservedFor as varchar(50)
AS
BEGIN
	INSERT INTO Reservation
	SELECT @SiteNum, AvailableDate AS ReservationDate, @ReservedFor
	FROM [Availability]
	WHERE SiteNum = @SiteNum
	 AND AvailableDate BETWEEN @ReservationBegin AND @ReservationEnd;

	DELETE FROM [Availability] 
	WHERE SiteNum = @SiteNum
	 AND AvailableDate BETWEEN @ReservationBegin AND @ReservationEnd;
END
GO

