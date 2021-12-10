Create table DIM_Product(
ProductKey int not null,
ProductName varchar(50),
ProductModelName varchar(50),
ProductSubCategoryName varchar(50),
ProductTopCategoryName varchar(50),
StandardCost decimal(13,4),
ListPrice decimal(13,4),
StartDate date,
EndDate date, 
ProductStatus VARCHAR(50));

ALTER TABLE DIM_Product
add constraint PK_DIM_Product
primary key(ProductKey);
