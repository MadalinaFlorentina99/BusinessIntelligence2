Create table TB_Address(
AddressID INT not null ,
CountryID int not null,
AddressLine varchar(60) not null,
City varchar(30) not null,
PostalCode varchar(15) not null
);

ALTER TABLE TB_Address
ADD CONSTRAINT PK_Adress
PRIMARY KEY (AddressID);

ALTER TABLE TB_Address
ADD CONSTRAINT FK_Country_Country
FOREIGN KEY (CountryID) REFERENCES TB_Country(CountryID);
