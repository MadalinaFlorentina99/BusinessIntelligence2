Create table TB_Country(
CountryID int not null,
Country varchar(50) not null,
Region varchar(50) not null,
TaxRate decimal(13,4),
ShipCoeff decimal(13,4)
);

ALTER TABLE TB_Country
ADD CONSTRAINT PK_Country
PRIMARY KEY (CountryID);