Create table TB_SalesOrderDetail(
SalesOrderDetailID int not null,
SalesOrderID int not null,
ProductID int not null,
OrderQty int not null,
UnitPrice decimal(13,4) not null);

alter table TB_SalesOrderDetail
ADD CONSTRAINT PK_SalesOrderDetail PRIMARY KEY (SalesOrderDetailID);

alter table TB_SalesOrderDetail
add constraint FK_SalesOrder_SalesOrderDetail
foreign key (SalesOrderID) references TB_SalesOrderHeader(SalesOrderID);

alter table TB_SalesOrderDetail
add constraint FK_Product_SalesOrderDetail
foreign key (ProductID) references TB_Product(ProductID);