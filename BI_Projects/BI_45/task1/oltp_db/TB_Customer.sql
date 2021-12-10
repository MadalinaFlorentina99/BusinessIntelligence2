Create table TB_Customer(
CustomerID  int not null,
PersonID int not null,
AccountNumber varchar(30) not null
);
alter table TB_Customer
ADD CONSTRAINT PK_Customer
primary key(CustomerID);

alter table TB_Customer
add constraint FK_Person_Person
foreign key (PersonID) references tb_person(PersonID);