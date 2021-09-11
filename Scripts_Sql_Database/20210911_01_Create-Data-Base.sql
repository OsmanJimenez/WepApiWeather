CREATE DATABASE Blog
GO

USE Blog

CREATE TABLE Countries (
    id_Country INT PRIMARY KEY IDENTITY (1, 1),
    Name_Country VARCHAR (50) NOT NULL,
);

CREATE TABLE City (
    id_City INT PRIMARY KEY IDENTITY (1, 1),
    Name_City VARCHAR (50) NOT NULL,
	Country_id INT NOT NULL,
	FOREIGN KEY (Country_id) REFERENCES Countries (id_Country)
);

CREATE TABLE News (
	id_New INT PRIMARY KEY IDENTITY (1, 1),
    Author VARCHAR (50) NOT NULL,
	Title VARCHAR (100) NOT NULL,
	Description_New VARCHAR (150) NOT NULL,
	Url_New VARCHAR (150) NOT NULL,
	Url_To_Image VARCHAR (150) NOT NULL,
	Published_At DATE NOT NULL,
	Content VARCHAR (1350) NOT NULL,
	City_id INT NOT NULL,
	FOREIGN KEY (City_id) REFERENCES City (id_City)
);

CREATE TABLE Weather (
	id_Weather INT PRIMARY KEY IDENTITY (1, 1),
    Observation_Time TIME NOT NULL,
	Temperature INT NOT NULL,
	Weather_Descriptions VARCHAR (50) NOT NULL,
	Wind_Speed INT NOT NULL,
	Wind_Degree INT NOT NULL,
	Wind_Dir VARCHAR (2) NOT NULL,
	Pressure INT NOT NULL,
	Precip INT NOT NULL,
	Humidity INT NOT NULL,
	Cloudcover INT NOT NULL,
	Feelslike INT NOT NULL,
	Uv_Index INT NOT NULL,
	City_id INT NOT NULL,
	FOREIGN KEY (City_id) REFERENCES City (id_City)
);

INSERT INTO Countries (Name_Country)
VALUES ('Argentina'),
 ('Brasil'),
 ('Chile'),
 ('Colombia'),
 ('Ecuador'),
 ('Estaos Unidos'),
 ('Mexico'),
 ('Uruguay'),
 ('Venezuela');

 INSERT INTO City (Name_City, Country_id)
VALUES ('Fusagasugá',4),
 ('Bogotá',4),
 ('New York',6),
 ('Medellin',4);

  INSERT INTO News (Author, Title, Description_New, Url_New , Url_To_Image, Published_At, Content, City_id)
VALUES ('Osman Jimenez','Orquídeas salvaron un cerro en Fusagasugá','16 especies de orquídeas fueron registradas en el cerro Pico de Plata Fusagasugá','https://bit.ly/3EiTBZg','https://bit.ly/3C4mrKM','2021-08-31','Hacia 2013, la Corporación Autónoma Regional de Cundinamarca (CAR) otorgó una licencia para la explotación minera de materiales de construcción en el cerro Pico de Plata en Fusagasugá, la cual, según la comunidad afectaría directamente a las veredas Bochica y Batán. Además, el río Batán, importante fuente hídrica de la región, se vería gravemente contaminado por esta actividad.',2),
 ('Osman Jimenez','Fortalecen la conservación de orquídeas en Cundinamarca','Más de 200 viveristas de los municipios de Fusagasugá, San Antonio del Tequendama y La Calera recibieron 5.000 plántulas','https://bit.ly/38VBk5M','https://bit.ly/3E8vHiZ','2021-06-10','Tras cerca de tres años de trabajos, y con 3.400 millones de pesos que fueron destinados del Fondo Nacional de Regalías por parte del departamento, se buscó que los campesinos de esta región ayudaran a reproducir estas icónicas especies, que se ven amenazadas porque personas inescrupulosas las sacan de los bosques y las comercializan, debido a sus colores y formas exóticas.',1),
 ('Armando Cortes','Nueva York se prepara para enfrentar altas temperaturas','Partes de Nueva York y Nueva Jersey se preparan para un día de altísimas temperaturas.','https://cnn.it/3ntVlsJ','https://cnn.it/3E8kgba','2021-08-10','Partes de Nueva York y Nueva Jersey se preparan para un día de altísimas temperaturas. Millones de personas se encuentran bajo un aviso de calor este viernes y se espera que los termómetros superen incluso los 37 grados centígrados.',3),
 ('Osman Jimenez','Nueva York despierta','La ciudad de Nueva York está recuperando lentamente su normalidad','https://cnn.it/3li3SMq','https://cnn.it/2X8MHVO','2021-08-12','La ciudad de Nueva York está recuperando lentamente su normalidad, después de más de un año de estar casi paralizada y de haber sido el epicentro de la pandemia de covid-19 en Estados Unidos. A medida que se van suspendiendo las restricciones impuestas por las autoridades, más gente está retornando a sus trabajos mientras continúan aumentando las visitas de turistas nacionales y extranjeros. El optimismo en torno al futuro de la ciudad se vuelve a sentir en tiendas.',3);

 INSERT INTO Weather (Observation_Time , Temperature , Weather_Descriptions , Wind_Speed  , Wind_Degree , Wind_Dir , Pressure , Precip, Humidity , Cloudcover , Feelslike , Uv_Index ,City_id )
VALUES('12:14',13,'Sunny',0,349,'S',1010,0,90,0,13,4,1),
('8:14',12, 'Sunny',0,49,'S',1210,20,70,0,13,40,2),
('9:14',11,'Sunny',0,359,'S',1100,10,80,0,13,33,3),
('10:14',23,'Sunny',0,342,'S',1014,0,80,0,13,24,4);



