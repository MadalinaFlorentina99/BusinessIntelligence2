USE BI_BikesDW_45;
INSERT INTO DIM_CUSTOMER(CustomerKey, AccountNumber, Gender, FullName, Age)
   SELECT TB_Customer.CustomerID, TB_Customer.AccountNumber, TB_Person.Gender, 
   CONCAT(TB_Person.FirstName, ' ', TB_Person.MiddleName, ' ', TB_Person.LastName) AS FullName,
   DATEDIFF('2021-09-30', TB_Person.Birthdate)/365 AS Age
     FROM BI_Bikes_45.TB_Customer
     INNER JOIN BI_Bikes_45.TB_Person ON BI_Bikes_45.TB_Customer.PersonID=BI_Bikes_45.TB_Person.PersonID
	 WHERE CustomerID=11000;
