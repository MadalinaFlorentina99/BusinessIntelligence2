Create table TB_SalesOrderHeader(
SalesOrderID int not null,
SalesOrderNumber varchar(30) not null,
OrderDate date not null,
DueDate date not null,
ShipDate date,
OrderStatusID int not null,
CustomerID int not null,
BillToAddressID int not null,
ShipToAddressID int not null,
ShipMethodID int not null
);
alter table TB_SalesOrderHeader
add unique(SalesOrderNumber);

alter table TB_SalesOrderHeader
add constraint PK_SalesOrderHeader
primary key(SalesOrderID);

alter table TB_SalesOrderHeader
add constraint FK_OrderStatus_SalesOrderHeader
foreign key (OrderStatusID) references TB_OrderStatus(OrderStatusID);

alter table TB_SalesOrderHeader
add constraint FK_Customer_SalesOrderHeader
foreign key (CustomerID) references TB_Customer(CustomerID);


alter table TB_SalesOrderHeader
add constraint FK_BillToAddress_SalesOrderHeader
foreign key (BillToAddressID) references TB_Address(AddressID);

alter table TB_SalesOrderHeader
add constraint FK_ShipToAddress_SalesOrderHeader
foreign key (ShipToAddressID) references TB_Address(AddressID);

alter table TB_SalesOrderHeader
add constraint FK_ShipMethod_SalesOrderHeader
foreign key (ShipMethodID) references TB_ShipMethod(ShipMethodID)

