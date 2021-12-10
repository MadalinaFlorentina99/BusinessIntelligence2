Create table TB_ProductTopCategory(
ProductTopCategoryID int not null,
Name varchar(50) not null,
ShipSurcharge decimal(13,4)
);

alter table TB_ProductTopCategory
add constraint PK_ProductTopCategory
primary key(ProductTopCategoryID);