/*
	sedziaid int NOT NULL,
	imie nvarchar(50) NOT NULL,
	nazwisko nvarchar(50) NOT NULL,
	data_urodzenia date NOT NULL,
	od_kiedy_sedziuje date NOT NULL,
	adres nvarchar(50) NOT NULL,
	numerTelefonu nchar(10) NOT NULL,
	kraj nvarchar(50) NOT NULL,
	aktywny nchar(10) NOT NULL
	*/
	--sedziowie
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(1, 'Oleh', 'Kucharski', '1951-08-09','1978-12-19', 'Porzeczkowa 51-212', '123010231','Polska', 'tak');
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(2, 'Patrycja', N'Urban', '1961-12-14','1990-12-23', 'Piastowska 09-372', '235728354','Polska', 'tak');
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(3, 'Tetiana', 'B¹k', '1966-04-11','1996-04-11', 'Akacjowa 09-689', '654683231','Ukraina', 'nie');

	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(4, 'Krzysztof', 'Wróbel', '1947-10-09','1997-10-09', 'Parkowa 60-432', '357892231','Polska', 'tak');
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(5, 'Diana', 'Wojciechowska', '1951-08-09','2000-02-04', 'Z¹bkowicka 06-679', '845532521','Polska', 'tak');
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(6, 'Aniela', 'Markowska', '1965-09-21','1978-12-19', 'Rolna 12-666', '735252351','Polska', 'tak');

	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(7, 'Ludwika', 'W³odarczyk', '1978-01-15','1998-12-19', 'Piwna 02-784', '634634631','Polska', 'tak');
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(8, 'Franciszka', 'Mazurek', '1931-10-23','1968-12-19', 'Miodowa 74-191', '234235231','Polska', 'tak');
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(9, 'Honorata', 'Borowska', '1975-09-29','2012-08-25', 'Leœna 09-592', '543254231','Polska', 'nie');

	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(10, 'Jowita', 'Marciniak', '1990-03-09','2012-08-25', 'Bema 75-851', '367364231','Polska', 'nie');
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(11, 'Bo¿enna', 'W³odarczyk', '1974-11-05','1999-12-19', 'Konopnickiej 16-534', '634634631','Polska', 'tak');
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(12, 'Rudolf', 'Mazurek', '1931-10-23','1999-12-25', 'D³uga 24-031', '563432631','Polska', 'tak');

	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(13, 'Urszula', 'W³odarczyk', '1926-06-18','1968-12-19', 'M³odych 56-043', '634634631','Polska', 'tak');
	INSERT INTO dbo.Sedziowie(sedziaid, imie, nazwisko, data_urodzenia, od_kiedy_sedziuje, adres, numerTelefonu, kraj, aktywny)
	values(14, 'Zenobia', 'Sosnowska', '1948-03-31','2008-04-07', 'Kosiby 47-262', '875685251','Polska', 'tak');


	select * from Sedziowie



