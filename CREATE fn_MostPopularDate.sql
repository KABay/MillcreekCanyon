USE MillcreekCanyon
GO

/* fn_MostPopularDate()

   returns the most popular ReservationDate (visited date) as a table of dates, 
   all of whom equally were the most visited date(s)

   USE: SELECT * from fn_MostPopularDate();
*/

CREATE FUNCTION dbo.fn_MostPopularDate 
(	
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT DISTINCT ReservationDate
	FROM Reservation
	GROUP BY ReservationDate
	HAVING count(*) = ( SELECT TOP 1 count(*) AS Popularity
	 				    FROM Reservation
						GROUP BY ReservationDate 
						ORDER BY  Popularity DESC )
)
GO

