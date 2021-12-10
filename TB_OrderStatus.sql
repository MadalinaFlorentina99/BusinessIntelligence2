Create table TB_OrderStatus(
OrderStatusID int not null,
OrderStatusName varchar(50));

alter table TB_OrderStatus
add constraint PK_OrderStatus
primary key(OrderStatusID);