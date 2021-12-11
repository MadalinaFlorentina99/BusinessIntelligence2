USE BI_BikesDW_45;
INSERT INTO DIM_Product(ProductKey, ProductName, ProductModelName, ProductSubCategoryName, ProductTopCategoryName, StandardCost, ListPrice, StartDate, EndDate, ProductStatus)
   SELECT ProductID, ProductName, ProductModelName, TB_ProductSubCategory.Name, TB_ProductTopCategory.Name, 
   StandardCost, ListPrice, SellStartDate, SellEndDate, IF((SellEndDate IS NULL) OR (SellEndDate > '2021-09-30'), 'Current', 'Discontinued') AS ProductStatus
     FROM BI_Bikes_45.TB_Product
     INNER JOIN BI_Bikes_45.TB_ProductModel ON BI_Bikes_45.TB_Product.ProductModelID = BI_Bikes_45.TB_ProductModel.ProductModelID
     INNER JOIN BI_Bikes_45.TB_ProductSubCategory ON BI_Bikes_45.TB_Product.ProductSubCategoryID = BI_Bikes_45.TB_ProductSubCategory.ProductSubCategoryID
     INNER JOIN BI_Bikes_45.TB_ProductTopCategory ON BI_Bikes_45.TB_ProductSubCategory.ProductTopCategoryID = BI_Bikes_45.TB_ProductTopCategory.ProductTopCategoryID;