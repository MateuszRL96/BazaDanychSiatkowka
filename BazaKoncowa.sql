/*
   pi¹tek, 30 grudnia 202200:36:13
   User: 
   Server: DESKTOP-7BQ2H0J\MISSQLSEWER
   Database: Siatkowka
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Bilety
	(
	meczid int NOT NULL,
	iloscBiletow int NOT NULL,
	ochrona nchar(10) NOT NULL,
	NazwaOchrony nvarchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Bilety ADD CONSTRAINT
	PK_Bilety PRIMARY KEY CLUSTERED 
	(
	meczid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Bilety SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Frekwencja
	(
	playerid int NOT NULL,
	ileRazyByl int NOT NULL,
	ileRazyNiebylo int NOT NULL,
	wZastepstwie int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Frekwencja ADD CONSTRAINT
	PK_Frekwencja PRIMARY KEY CLUSTERED 
	(
	playerid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Frekwencja SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Kapitanowie
	(
	Kapitanid int NOT NULL,
	zawodnikid int NOT NULL,
	telefon nchar(10) NOT NULL,
	nazwaFirmy nvarchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Kapitanowie ADD CONSTRAINT
	PK_Kapitanowie PRIMARY KEY CLUSTERED 
	(
	Kapitanid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Kapitanowie SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Obiekty
	(
	Nazwaid nvarchar(50) NOT NULL,
	Miasto nvarchar(50) NOT NULL,
	pojemnsc int NOT NULL,
	obiektid int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Obiekty SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.tabela
	(
	druzynaid int NOT NULL,
	punkty int NOT NULL,
	wygrane int NOT NULL,
	przegrane int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.tabela ADD CONSTRAINT
	PK_tabela PRIMARY KEY CLUSTERED 
	(
	druzynaid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.tabela SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Platnosci
	(
	druzynaid int NOT NULL,
	platnosc nchar(10) NOT NULL,
	kiedyzapacono date NOT NULL,
	odetki int NOT NULL,
	drugadata date NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Platnosci ADD CONSTRAINT
	PK_Platnosci PRIMARY KEY CLUSTERED 
	(
	druzynaid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Platnosci SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Osiagniecia
	(
	playerid int NOT NULL,
	punkty int NOT NULL,
	asy int NOT NULL,
	kartki int NOT NULL,
	mecze int NOT NULL,
	aktywnosc nchar(10) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Osiagniecia ADD CONSTRAINT
	PK_Osiagniecia PRIMARY KEY CLUSTERED 
	(
	playerid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Osiagniecia SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Sedziowie
	(
	sedziaid int NOT NULL,
	imie nvarchar(50) NOT NULL,
	nazwisko nvarchar(50) NOT NULL,
	data_urodzenia date NOT NULL,
	od_kiedy_sedziuje date NOT NULL,
	adres nvarchar(50) NOT NULL,
	numerTelefonu nchar(10) NOT NULL,
	kraj nvarchar(50) NOT NULL,
	aktywny nchar(10) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Sedziowie ADD CONSTRAINT
	PK_Sedziowie PRIMARY KEY CLUSTERED 
	(
	sedziaid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Sedziowie SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Druzyny
	(
	NazwaDruzyny nvarchar(50) NOT NULL,
	Miasto nvarchar(50) NOT NULL,
	Trener nvarchar(MAX) NOT NULL,
	DruzynaID int NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Druzyny ADD CONSTRAINT
	PK_Druzyny PRIMARY KEY CLUSTERED 
	(
	DruzynaID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Druzyny ADD CONSTRAINT
	FK_Druzyny_Platnosci FOREIGN KEY
	(
	DruzynaID
	) REFERENCES dbo.Platnosci
	(
	druzynaid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Druzyny ADD CONSTRAINT
	FK_Druzyny_tabela FOREIGN KEY
	(
	DruzynaID
	) REFERENCES dbo.tabela
	(
	druzynaid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Druzyny SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Wyniki
	(
	DruzynaA int NOT NULL,
	DruzynaB int NOT NULL,
	Wynik nchar(10) NOT NULL,
	sedzia int NOT NULL,
	Kiedy date NOT NULL,
	meczid int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Wyniki ADD CONSTRAINT
	PK_Wyniki PRIMARY KEY CLUSTERED 
	(
	meczid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Wyniki ADD CONSTRAINT
	FK_Wyniki_Sedziowie FOREIGN KEY
	(
	sedzia
	) REFERENCES dbo.Sedziowie
	(
	sedziaid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Wyniki ADD CONSTRAINT
	FK_Wyniki_Druzyny FOREIGN KEY
	(
	DruzynaA
	) REFERENCES dbo.Druzyny
	(
	DruzynaID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Wyniki ADD CONSTRAINT
	FK_Wyniki_Druzyny1 FOREIGN KEY
	(
	DruzynaB
	) REFERENCES dbo.Druzyny
	(
	DruzynaID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Wyniki ADD CONSTRAINT
	FK_Wyniki_Bilety FOREIGN KEY
	(
	meczid
	) REFERENCES dbo.Bilety
	(
	meczid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Wyniki SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Zawodnicy
	(
	playerid int NOT NULL,
	imie nvarchar(50) NOT NULL,
	nazwisko nvarchar(50) NOT NULL,
	data_urodzenia date NOT NULL,
	adres nvarchar(50) NOT NULL,
	od_kiedygra date NOT NULL,
	kraj nvarchar(50) NOT NULL,
	numerTelefonu nchar(10) NOT NULL,
	druzyna int NOT NULL,
	kapitan int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Zawodnicy ADD CONSTRAINT
	PK_Zawodnicy PRIMARY KEY CLUSTERED 
	(
	playerid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Zawodnicy ADD CONSTRAINT
	FK_Zawodnicy_Druzyny FOREIGN KEY
	(
	druzyna
	) REFERENCES dbo.Druzyny
	(
	DruzynaID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Zawodnicy ADD CONSTRAINT
	FK_Zawodnicy_Osiagniecia FOREIGN KEY
	(
	playerid
	) REFERENCES dbo.Osiagniecia
	(
	playerid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Zawodnicy ADD CONSTRAINT
	FK_Zawodnicy_Frekwencja FOREIGN KEY
	(
	playerid
	) REFERENCES dbo.Frekwencja
	(
	playerid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Zawodnicy ADD CONSTRAINT
	FK_Zawodnicy_Kapitanowie FOREIGN KEY
	(
	kapitan
	) REFERENCES dbo.Kapitanowie
	(
	Kapitanid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Zawodnicy SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Trenerzy
	(
	trenerid int NOT NULL,
	druzyna int NOT NULL,
	imie nvarchar(50) NOT NULL,
	nazwisko nvarchar(50) NOT NULL,
	dataUrodzenia date NOT NULL,
	odKiedyTrenuje date NOT NULL,
	adres nvarchar(50) NOT NULL,
	numerTelefonu nchar(10) NOT NULL,
	tytul nchar(10) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Trenerzy ADD CONSTRAINT
	PK_Trenerzy PRIMARY KEY CLUSTERED 
	(
	trenerid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Trenerzy ADD CONSTRAINT
	FK_Trenerzy_Druzyny FOREIGN KEY
	(
	druzyna
	) REFERENCES dbo.Druzyny
	(
	DruzynaID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Trenerzy ADD CONSTRAINT
	FK_Trenerzy_Druzyny1 FOREIGN KEY
	(
	druzyna
	) REFERENCES dbo.Druzyny
	(
	DruzynaID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Trenerzy SET (LOCK_ESCALATION = TABLE)
GO
COMMIT

/*
   pi¹tek, 30 grudnia 202219:15:12
   User: 
   Server: DESKTOP-7BQ2H0J\MISSQLSEWER
   Database: Siatkowka
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Obiekty ADD CONSTRAINT
	PK_Obiekty PRIMARY KEY CLUSTERED 
	(
	obiektid
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Obiekty SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Wyniki ADD CONSTRAINT
	FK_Wyniki_Obiekty FOREIGN KEY
	(
	meczid
	) REFERENCES dbo.Obiekty
	(
	obiektid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Wyniki SET (LOCK_ESCALATION = TABLE)
GO
COMMIT

/*
   wtorek, 10 stycznia 202320:40:35
   User: 
   Server: DESKTOP-7BQ2H0J\MISSQLSEWER
   Database: Siatkowka
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Wyniki
	DROP CONSTRAINT FK_Wyniki_Druzyny
GO
ALTER TABLE dbo.Druzyny SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Wyniki
	DROP CONSTRAINT FK_Wyniki_Sedziowie
GO
ALTER TABLE dbo.Sedziowie SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Wyniki ADD CONSTRAINT
	FK_Wyniki_Sedziowie1 FOREIGN KEY
	(
	sedzia
	) REFERENCES dbo.Sedziowie
	(
	sedziaid
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Wyniki SET (LOCK_ESCALATION = TABLE)
GO
COMMIT

