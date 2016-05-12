CREATE TABLE `city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `District` char(20) NOT NULL DEFAULT '',
  `Population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=latin1

/*
-- Query: SELECT * FROM world.city limit 0, 10
-- Date: 2016-05-13 00:37
*/
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1,'Kabul','AFG','Kabol',1780000);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (2,'Qandahar','AFG','Qandahar',237500);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3,'Herat','AFG','Herat',186800);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (4,'Mazar-e-Sharif','AFG','Balkh',127800);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (5,'Amsterdam','NLD','Noord-Holland',731200);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (6,'Rotterdam','NLD','Zuid-Holland',593321);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (7,'Haag','NLD','Zuid-Holland',440900);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (8,'Utrecht','NLD','Utrecht',234323);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (9,'Eindhoven','NLD','Noord-Brabant',201843);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (10,'Tilburg','NLD','Noord-Brabant',193238);


/*
-- Query: SELECT * FROM world.city where countryCode = 'USA' limit 0, 10
-- Date: 2016-05-13 00:38
*/
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3793,'New York','USA','New York',8008278);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3794,'Los Angeles','USA','California',3694820);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3795,'Chicago','USA','Illinois',2896016);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3796,'Houston','USA','Texas',1953631);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3797,'Philadelphia','USA','Pennsylvania',1517550);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3798,'Phoenix','USA','Arizona',1321045);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3799,'San Diego','USA','California',1223400);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3800,'Dallas','USA','Texas',1188580);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3801,'San Antonio','USA','Texas',1144646);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (3802,'Detroit','USA','Michigan',951270);


/*
-- Query: SELECT * FROM world.city where countryCode = 'CHN' limit 0, 10
-- Date: 2016-05-13 00:38
*/
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1890,'Shanghai','CHN','Shanghai',9696300);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1891,'Peking','CHN','Peking',7472000);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1892,'Chongqing','CHN','Chongqing',6351600);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1893,'Tianjin','CHN','Tianjin',5286800);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1894,'Wuhan','CHN','Hubei',4344600);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1895,'Harbin','CHN','Heilongjiang',4289800);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1896,'Shenyang','CHN','Liaoning',4265200);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1897,'Kanton [Guangzhou]','CHN','Guangdong',4256300);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1898,'Chengdu','CHN','Sichuan',3361500);
INSERT INTO `city` (`ID`,`Name`,`CountryCode`,`District`,`Population`) VALUES (1899,'Nanking [Nanjing]','CHN','Jiangsu',2870300);
