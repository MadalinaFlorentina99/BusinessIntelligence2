Create table TB_Person(
PersonID int not null,
FirstName varchar(50),
MiddleName varchar(50),
LastName varchar(50),
Gender varchar(1),
Birthdate date);

alter table TB_Person
add constraint PK_Person
 primary key(PersonID);