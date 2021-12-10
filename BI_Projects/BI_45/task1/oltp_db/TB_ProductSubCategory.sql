Create table TB_ProductSubCategory(
ProductSubCategoryID int not null,
ProductTopCategoryID int not null,
Name varchar(50));

alter table TB_ProductSubCategory
add constraint PK_ProductSubCategory
primary key(ProductSubCategoryID);

alter table TB_ProductSubCategory
add constraint FK_ProductTopCategory_ProductTopCategory
foreign key (ProductTopCategoryID) references TB_ProductTopCategory(ProductTopCategoryID);