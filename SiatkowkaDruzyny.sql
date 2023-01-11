/*
	NazwaDruzyny nvarchar(50) NOT NULL,
	Miasto nvarchar(50) NOT NULL,
	Trener nvarchar(MAX) NOT NULL,
	DruzynaID int NOT NULL
	*/

	--druzyny

	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('FC Barcelona', 'Koszalin', '1', 1);
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Borusia Dortmund', 'Plock', '2', 2); 
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Paris Saint germain ', 'Warszawa', '3', 3); 
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Real Madryt ', 'Koszalin', '4', 4);
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Bayern Monachium ', 'Poznan', '5', 5);    
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('AC Milan', 'Krakow', '6', 6);
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('LazioRzym ', 'Koszalin', '7', 7);
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('AS Roma', 'Stalowa Wola', '8', 8);
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Arsenal Londyn', 'Nisko', '9', 9);     
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Juventus Turyn', 'Koszalin', '10', 10); 
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Inter Medriolan', 'Nowa Sacz', '11', 11); 
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Chelsea Londyn ', 'Bialystok', '12', 12); 
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Lech Poznan', 'Krosno', '13', 13);  
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Liverpool ', ' Rzeszow', '14', 14); 
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Everton ', 'Gdansk', '15', 15); 
	INSERT INTO dbo.Druzyny(NazwaDruzyny, Miasto, Trener, DruzynaID) Values ('Aston Villa', 'Gdynia', '16', 16); 

	select * from Druzyny