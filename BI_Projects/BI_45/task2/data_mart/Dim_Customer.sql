Create table DIM_CUSTOMER(
CustomerKey INT not null,
AccountNumber varchar(30) not null,
FullName varchar(80),
Gender varchar(1),
Age int
);
alter table DIM_CUSTOMER
add constraint PK_CustomerKey
primary key(CustomerKey);

