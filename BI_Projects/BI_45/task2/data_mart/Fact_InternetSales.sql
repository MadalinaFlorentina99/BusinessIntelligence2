Create table Fact_InternetSales(
SalesOrderLineNumber VARCHAR(50),
SalesOrderNumber VARCHAR(50),
OrderDateKey int,
OrderDate date,
DueDateKey int,
DueDate date,
ShipDateKey int,
ShipDate date,
ProductKey int,
CustomerKey int,
ShipToLocationKey int,
OrderStatus varchar(50),
ShipMethod varchar(50),
OrderQty decimal(13,4),
UnitPrice decimal(13,4),
OrderLineTotal DECIMAL(13,4),
OrderLineProfit DECIMAL(13,4),
OrderLineTaxAmt DECIMAL(13,4),
OrderLineShoppingCost DECIMAL(13,4));

Alter Table Fact_InternetSales
add constraint PK_Fact_InternetSales
primary key(SalesOrderLineNumber);

Alter table Fact_InternetSales
add constraint FK_Customer_Fact_InternetSales
foreign key (CustomerKey) references dim_customer(CustomerKey);

Alter table Fact_InternetSales
add constraint FK_Location_Fact_InternetSales
foreign key (ShipToLocationKey) references dim_location(LocationKey);

Alter table Fact_InternetSales
add constraint FK_Product_Fact_InternetSales
foreign key (ProductKey) references dim_product(ProductKey);

Alter table Fact_InternetSales
add constraint FK_Date_Fact_InternetSales
foreign key (OrderDateKey) references dim_date(DateKey);

Alter table Fact_InternetSales
add constraint FK_DueDate_Fact_InternetSales
foreign key (DueDateKey) references dim_date(DateKey);

Alter table Fact_InternetSales
add constraint FK_ShipDate_Fact_InternetSales
foreign key (ShipDateKey) references dim_date(DateKey);

