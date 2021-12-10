Create table DIM_Location(
LocationKey INT not null,
Country varchar(50),
Region varchar(50),
TaxRate decimal(13,4),
ShipCoeff decimal(13,4));

Alter table DIM_Location
add constraint PK_Location
Primary key(LocationKey);