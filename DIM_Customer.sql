Create table DIM_CUSTOMER(
CustomerKey INT not null,
AccountNumber INT,
FullName varchar(80),
Gender varchar(1),
Age int
);
alter table DIM_CUSTOMER
add constraint PK_CustomerKey
primary key(CustomerKey);

