USE BI_BikesDW_45;
INSERT INTO BI_BikesDW_45.Fact_InternetSales
	SELECT CONCAT('SOL', TB_SalesOrderHeader.SalesOrderID, '-', TB_SalesOrderDetail.SalesOrderDetailID) AS SalesOrderLineNumber, SalesOrderNumber,
	(YEAR(OrderDate) * 10000 + MONTH(OrderDate) * 100 + DAYOFMONTH(OrderDate)) AS OrderDateKey, OrderDate,
	(YEAR(DueDate) * 10000 + MONTH(DueDate) * 100 + DAYOFMONTH(DueDate)) AS DueDateKey, DueDate,
	(YEAR(ShipDate) * 10000 + MONTH(ShipDate) * 100 + DAYOFMONTH(ShipDate)) AS ShipDateKey, ShipDate,TB_SalesOrderDetail.ProductID AS ProductKey, 
	CustomerID AS CustomerKey, TB_Country.CountryID AS ShipToLocationKey,TB_OrderStatus.OrderStatusName As OrderStatus, ShipMethodName As ShipMethod, OrderQty, UnitPrice,
	(OrderQty * UnitPrice) AS OrderLineTotal, (OrderQty * UnitPrice - OrderQty * StandardCost) AS OrderLineProfit, 
	(OrderQty * UnitPrice * TaxRate) AS OrderLineTaxAmt, (ShipSurcharge + ShipBase + (OrderQty * ShipRate * ShipCoeff)) AS OrderLineShippingCost
	FROM BI_Bikes_45.TB_SalesOrderHeader JOIN BI_Bikes_45.TB_SalesOrderDetail JOIN BI_Bikes_45.TB_OrderStatus
	JOIN BI_Bikes_45.TB_ShipMethod JOIN BI_Bikes_45.TB_Address ON BI_Bikes_45.TB_Address.AddressID=BI_Bikes_45.TB_SalesOrderHeader.ShipToAddressID
	JOIN BI_Bikes_45.TB_Product ON BI_Bikes_45.TB_Product.ProductID=BI_Bikes_45.TB_SalesOrderDetail.ProductID
	JOIN BI_Bikes_45.TB_Country JOIN BI_Bikes_45.TB_ProductSubCategory JOIN BI_Bikes_45.TB_ProductTopCategory;

     