Create table TB_ShipMethod(
ShipMethodID int not null,
ShipMethodName varchar(50) not null,
ShipBase decimal(13,4) not null,
ShipRate decimal (13,4) not null);

alter table TB_ShipMethod
add constraint PK_ShipMethod
 primary key(ShipMethodID);