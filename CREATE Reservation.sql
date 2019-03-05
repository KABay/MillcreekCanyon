USE MillcreekCanyon
GO

CREATE TABLE dbo.Reservation(
	SiteNum varchar(3) NOT NULL,
	ReservationDate [date] NOT NULL,
	ReservedFor varchar(50) NOT NULL
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	SiteNum ASC,
	ReservationDate ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
