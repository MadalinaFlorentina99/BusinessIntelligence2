Create table TB_ProductModel(
ProductModelID int not null,
ProductModelName varchar(50));
alter table TB_ProductModel
add constraint PK_ProductModel
primary key(ProductModelID);