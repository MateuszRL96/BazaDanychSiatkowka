/*
	Nazwaid nvarchar(50) NOT NULL,
	Miasto nvarchar(50) NOT NULL,
	pojemnsc int NOT NULL,
	obiektid int NOT NULL
	*/

	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('Wembley', 'Londyn, Wielka Brytania', 50000, 1);
	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('Old Trafford', 'Manchester, Wielka Brytania', 65000, 2);
	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('Camp Nou', 'Barcelona, Hiszpania', 80000, 3);
	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('stadio Santiago Bernabéu', 'Madryt, Hiszpania',100000, 4);
	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('Olympiastadion ', 'Berlin, Niemcy', 60000, 5);
	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('Signal Iduna Park', 'Dortmund, Niemcy', 45000, 6);
	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('Stadio Giuseppe Meazza', 'Mediolan, W³ochy', 25000, 7);
	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('Stadio Olimpico', 'Rzym, W³ochy', 26000, 8);
	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('Stade de France', 'Saint-Denis, Francja', 85600, 9);
	INSERT INTO dbo.Obiekty(Nazwaid, Miasto, pojemnsc, obiektid) values('£u¿niki', 'Moskwa, Rosja', 35400, 10);

	select * from Obiekty