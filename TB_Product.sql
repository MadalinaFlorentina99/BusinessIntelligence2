Create table TB_Product(
ProductID int not null,
ProductName varchar(50) not null,
ProductNumber varchar(50) not null,
StandardCost decimal(13,4) not null,
ListPrice decimal(13,4) not null,
ProductSubCategoryID int,
ProductModelID int,
SellStartDate date not null,
SellEndDate date);
alter table TB_Product
add unique (ProductNumber);

alter table TB_Product
add constraint PK_Product
primary key(ProductID);

alter table TB_Product
add constraint FK_ProductSubCategory_ProductSubCategory
foreign key (ProductSubCategoryID) references tb_ProductSubCategory(ProductSubCategoryID);

alter table TB_Product
add constraint FK_ProductModel_ProductModel
foreign key (ProductModelID)  references tb_ProductModel(ProductModelID);